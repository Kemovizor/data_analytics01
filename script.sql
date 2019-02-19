create table Businesses
(
business_id varchar(22) not null primary key,
name varchar(70) not null,
address varchar(130) not null,
city varchar(100) not null,
state varchar(5) not null,
postal_code varchar(10) not null,
latitude float not null,
longitude float not null,
stars float not null,
review_count int null,
is_open int null,
atributes jsonb null,
categories varchar(1500) null,
hours jsonb null
);



