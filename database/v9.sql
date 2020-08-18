create table user_data (
   id varchar(20) NOT NULL PRIMARY KEY,
   user_type varchar(20) NOT NULL,
   f_name varchar(50) NOT NULL,
   m_name varchar(50),
   l_name varchar(50) NOT NULL,
   email varchar(100) NOT NULL,
   mobile varchar(20) NOT NULL,
   password varchar(100) NOT NULL,
   address varchar(300) NOT NULL,
   last_update DATETIME NOT NULL 
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