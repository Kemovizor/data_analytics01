create table Businesses
(
business_id varchar(22) not null primary key,
name varchar,
address varchar,
city varchar,
state varchar,
postal_code varchar,
latitude float,
longitude float,
stars float,
review_count int,
is_open int,
attributes jsonb,
categories varchar,
hours jsonb
);

create table Users(
user_id varchar(22) not null primary key,
name varchar,
review_count int,
yelping_since varchar,
useful int,
funny int,
cool int,
elite varchar,
friends varchar,
fans int,
average_stars float,
compliment_hot int,
compliment_more	int,
compliment_profile int,
compliment_cute	int,
compliment_list	int,
compliment_note	int,
compliment_plain int,
compliment_cool int,
compliment_funny int,
compliment_writer int,
compliment_photos int
);