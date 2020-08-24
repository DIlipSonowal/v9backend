create table user_data (
   id int(8) NOT NULL PRIMARY KEY,
   user_type varchar(10) references user_type(u_type),
   f_name varchar(50) NOT NULL,
   m_name varchar(50),
   l_name varchar(50) NOT NULL,
   password varchar(100) NOT NULL,
   country_id int(3) references country(id) on update cascade,
   state_id int(4) references state(id) on update cascade, 
   city_id int(4) references city(id) on update cascade,
   pin_code varchar(15),
   post_office varchar(100),
   address varchar(300) NOT NULL,
   last_update DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table mobile_number (
   user_id int(8) references user_data(id) on update cascade on delete cascade,
   mob_number varchar(15) not null unique
);

create table email (
   user_id int(8) references user_data(id) on update cascade on delete cascade,
   email_id varchar(100) not null unique
);

create table user_photo (
   user_id int(8) references user_data(id) on update cascade on delete cascade,
   image varchar(255) not null unique
);

create table user_type (
   u_type varchar(10) not null primary key
);
 

create table country (
	id int(3) AUTO_INCREMENT primary key,
	country_name varchar(255) not null unique
);

create table state (
	id int(4) AUTO_INCREMENT primary key,
	country_id int(3) references country(id) on update cascade on delete cascade,
	state_name varchar(255) not null unique
);

create table city (
	id int(3) AUTO_INCREMENT primary key,
	state_id int(4) references state(id) on update cascade on delete cascade,
	country_id int(3) references country(id) on update cascade on delete cascade,
	city_name varchar(255) not null unique,
	pin_code varchar(15) not null,
	post_office varchar(100)
);


create table home (
   id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   category varchar(100) NOT NULL,
   sub_header varchar(255) NOT NULL,
   header varchar(500) NOT NULL,
   text_content varchar(500),
   img varchar(50),
   icon varchar(50),
   count varchar(9),
   icon_category varchar(100),
   small_header varchar(100),
   small_description varchar(100),
   last_update DATETIME NOT NULL   
)