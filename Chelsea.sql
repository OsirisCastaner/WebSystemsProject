use ChelseaFootball;
show tables;
show columns from employees;

CREATE TABLE merchandise ( 
	merch_id integer unique not null auto_increment,
    itemName varchar(255),
    size varchar(255),
    price integer,
    PRIMARY KEY (merch_id)
    );
   
CREATE TABLE location (
    location_id INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
    section INTEGER NOT NULL,
    `row` VARCHAR(2),
    seat INTEGER,
    PRIMARY KEY (location_id)
);


CREATE TABLE ticket (
    ticket_id INTEGER UNIQUE NOT NULL AUTO_INCREMENT,
    location_id INTEGER NOT NULL,
    price VARCHAR(5),
    match_date DATE,
    PRIMARY KEY (ticket_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);
