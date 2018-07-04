import http from 'http';
import express from 'express';
import cors from 'cors';
import bodyParser from 'body-parser';
import config from './config.json';
import jwt from 'jsonwebtoken';

const app = express();

const url = 'http://localhost:8080/';

app.server = http.createServer(app);

//Route for upload
const path = __dirname + '/public/';

//Dev const
const exphbs = require('express-handlebars');
const multer = require('multer'); // file storing middleware
const mysql = require('mysql');
const con = mysql.createConnection({
	host: "localhost",
	port: 3306,
	user: "root",
	password: "tmp",
	database: "db"
});

app.engine('handlebars', exphbs({
	defaultLayout: 'main'
}));
app.set('view engine', 'handlebars');


// 3rd party middleware
app.use(cors({
	exposedHeaders: config.corsHeaders
}));

app.use(bodyParser.json({
	limit: config.bodyLimit
}));

app.use(bodyParser.urlencoded({
	extended: true
}));

//this is where our client side static files/output go
app.use('/', express.static(__dirname + '/public'));


// connect to db
dbconnect();
function dbconnect() {
	// connect to a database if needed, then pass it to `callback`:
	con.connect(function (err) {
		if (err) throw err;
		console.log('connected');
	})

	app.get('/', (req, res) => {
		res.json({
			message: "Wellcome to my api",
			ids: 'http://localhost:8085/id'
		});
	});


	//form router for dev
	app.get('/form', (req, res) => {
		res.render('form', {
			title: "form"
		})
	})


	// pull for orders
	app.post('/pull', verifyToken, function (req, res) {
		jwt.verify(req.token, 'pass', (err, authData) => {
			if(err) {
				res.sendStatus(403)
			} else {
				const obj = req.body;
				insertToDatabase(obj);
				res.json({
					message: req.body,
					authData
				});
			}
		});
	});





	//auth + token
	app.post('/auth', function (req, res) {
		const auth = req.body;
		console.log(auth.name);
		// const user = {
		// 	id: 1,
		// 	username: 'test',
		// 	email: 'test@mail.ru'
		//} 
		jwt.sign({user: auth}, 'pass', (err, token) => {
			res.json({
				token
			});
			insertAuthDatabase(auth, token);
			
		});
	});

	//Format for token
	//Authorize: Bearer <access_token>


	//Verify token
	function verifyToken(req, res, next) {
		// Get auth header value
		const bearerHeader = req.headers['authorization'];
		//Ckeck if bearer in undifined
		if(typeof bearerHeader !== 'undefined') {
			//Split at the space
			const bearer = bearerHeader.split(' ');
			//Get token from array
			const bearerToken = bearer[1];
			//Set the token
			req.token = bearerToken;
			//Next middleware
			next()
		} else {
			//Forbidden
			res.json({
				status: 403,
				error: 'Forbidden'
			});
		}
	}




	app.get('/id', (req, res) => {
		con.query('select * from Orders', function (err, rows) {
			if (err) {
				throw err;
			} else {
				res.writeHead(200, {
					"Content-Type": "application/json"
				});
				res.write(JSON.stringify(rows));
				res.end();
				// var result = {
				// 		success: true,
				// 		rows: rows.length,

				// }
			}
		});
	})

	app.get('/:id', function (req, res) {
		con.query('select * from Orders where id=?', [req.params.id], function (error, results) {
			if (error) throw error;
			res.writeHead(200, {
				//"Content-Type": "text/html; charset=utf-8"
				"Content-Type": "application/json"
			});
			//res.write(JSON.stringify(results));
			//res.write(results[0].Qnt);
			res.write(JSON.stringify(results));
			res.end();
		});
	})


	app.server.listen(process.env.PORT || config.port, () => {
		console.log(`Started on port ${app.server.address().port}`);
	});
};



function database(el) {
	// connect to a database if needed, then pass it to `callback`:
	//console.log(el);
	let sql = `INSERT INTO Product (
		Prodname,
		Produrl
	) 
	VALUES (
		'${el.originalname}',
		'${url + el.filename}'
	)`;

	con.query(sql, function (err) {
		if (err) throw err;
		console.log("1 record inserted");
	});
}

function insertToDatabase(el) {
	// connect to a database if needed, then pass it to `callback`:
	console.log(el);
	let sql = `INSERT INTO Orders (
		Item,
		Shop_name,
  		Rating,
  		Price,
  		Special_price,
  		Image_url,
  		tag
	) 
	VALUES (
		'${el.name}',
		'${el.shop_name}',
		'${el.rating}',
		'${el.price}',
		'${el.special_price}',
		'${el.image}',
		''
	)`;

	con.query(sql, function (err) {
		if (err) throw err;
		console.log("1 record inserted");
	});
}

function insertAuthDatabase(el, token) {
	let sql = `INSERT INTO auth (
		Name_auth,
		Email,
		Token
	) 
	VALUES (
		'${el.name}',
		'${el.email}',
		'${token}'
	)`;

	con.query(sql, function (err) {
		if (err) throw err;
		console.log("1 record inserted");
	});
}


export default app;
