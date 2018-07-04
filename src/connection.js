const mysql = require('mysql');

export const con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "tmp",
    database: "db"
});