use TAROTWEB



CREATE TABLE cardtable(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_cups(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_swords(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_pentacles(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE cardtable_wands(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    alt nvarchar(200) NULL,
    descripsion_u nvarchar(max) NULL,
    descripsion_r nvarchar(max) NULL,
    detail_u nvarchar(max) NULL,
    detail_r nvarchar(max) NULL
);

CREATE TABLE readertable(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
	position nvarchar(100) NULL,
    link nvarchar(200) NULL,
	img nvarchar(200) NULL,
    address nvarchar(200) NULL,
    phone varchar(20) NULL,
    detail_1 nvarchar(max) NULL,
    detail_2 nvarchar(max) NULL,
    detail_3 nvarchar(max) NULL,
	detail_4  nvarchar(max) NULL
);

CREATE TABLE cardtable_use(
    id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name nvarchar(100) NULL,
    link nvarchar(200) NULL,
    situation nvarchar(max) NULL,
    obstacle nvarchar(max) NULL,
    advice nvarchar(max) NULL
);