drop table if exists userComments; 
drop table if exists monsters; 
drop table if exists users; 

--create tables

CREATE TABLE users(
	userID varchar(13) unique primary key,
	displayName varchar(20) unique,
	dateJoined date,
	password varchar(50),
	email varchar(100) unique
	);


CREATE TABLE monsters(
	monsterID varchar(13) unique primary key,
	userID	varchar(13) not null references users(userID),
	dateCreated date,
	dateLastEdit date,
	versionNumber varchar(10), 
	rating int, --This number can only be between 1 and 5, how do we do this
	picture varchar(100), --Keep track of pictures ourselves? or use links?
	monsterName varchar(50), 
	race varchar(25), 
	size varchar(25),
	alignment varchar(30), 
	armorClass int, 
	armorType varchar(15), 
	hitDice varchar(15), 
	speed varchar(20), 
	str int, 
	dex int, 
	con int, 
	intelligence int, 
	wis int, 
	cha int,
	damageResistance text, 
	damageImmunities text,
	conditionImmunities text,
	senses text), 
	languages text, 
	challenge varchar(10), 
	skills text, 
	saves text, 
	abililties text, 
	actions text,  
	legendaryActions text, 
	lairActions text, 
	fluff text
);	

CREATE TABLE userComments(
	commentID varchar(13) unique primary key, 
	monsterID varchar(13) not null references monsters(monsterID),
	userID varchar(13) not null references users(userID),
	aComment varchar(500),
	dateCreated date
);