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

create table Reviews(
review_id varchar(22) not null primary key,
user_id varchar(22) references Users(user_id),
business_id varchar(22) references Businesses(business_id),
stars float,
useful int,
funny int,
cool int,
text varchar,
date varchar
);
    
create table Checkins(
business_id varchar(22) not null references Businesses(business_id),
date varchar,
primary key(business_id)
);

create table Tips(
user_id varchar(22) not null references Users(user_id),
business_id varchar(22) not null references Businesses(business_id),
text varchar,
date varchar,
compliment_count int
--primary key(user_id, business_id)
);

create table Photos(    
caption varchar,
photo_id varchar(22) not null primary key,
business_id varchar(22) null references Businesses(business_id),
label varchar
);

--we are doing this, because converter (csv to sql) converts null values [column categories] to empty string
update Businesses
set categories = null
where categories=''


