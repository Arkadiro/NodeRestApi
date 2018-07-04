
-- USE `db`;
-- -- CREATE TABLE Orders (
-- -- Id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- -- Item VARCHAR(100) NOT NULL,
-- -- Shop_name VARCHAR(100) NOT NULL,
-- -- Rating VARCHAR(100) NOT NULL,
-- -- Price VARCHAR(100) NOT NULL,
-- -- Special_price VARCHAR(100) NOT NULL,
-- -- Image_url VARCHAR(100) NOT NULL,
-- -- tag VARCHAR(100) NOT NULL,
-- -- DateUpdated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
-- -- PRIMARY KEY (Id)
-- -- )ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- CREATE TABLE categories(
--     Id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
--     Name_cat VARCHAR(250) NOT NULL ,
--     PRIMARY KEY (Id)
-- )ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -- INSERT INTO Product (Prodname, Produrl)
-- -- VALUES ('dildo', '/dido/');
-- -- INSERT INTO Product (Prodname, Produrl)
-- -- VALUES ('dildo1', '/dido1/');

-- select * from  Orders

CREATE TABLE auth(
    Id INT UNSIGNED NOT NULL AUTO_INCREMENT ,
    Name_auth VARCHAR(100) NOT NULL ,
    Email VARCHAR(250) NOT NULL ,
    PRIMARY KEY (Id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


USE `db`;

INSERT INTO `db`.`categories`(

    `Name_cat`
)
VALUES(
    '{"screen": "50 inch", "resolution": "2048 x 1152 pixels", "ports": {"hdmi": 1, "usb": 3}, "speakers": {"left": "10 watt", "right": "10 watt"}}'
);