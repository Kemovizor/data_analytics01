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

--Get number of NULL values by column
SELECT COUNT(*) -COUNT(business_id) As business_id,		
		COUNT(*)-COUNT(name) As name,
		COUNT(*)-COUNT(address) As address,
		COUNT(*)-COUNT(city) As city,
		COUNT(*)-COUNT(state) As state,
		COUNT(*)-COUNT(postal_code) As postal_code,
		COUNT(*)-COUNT(latitude) As latitude,
		COUNT(*)-COUNT(longitude) As longitude,
		COUNT(*)-COUNT(stars) As stars,
		COUNT(*)-COUNT(review_count) As review_count,
		COUNT(*)-COUNT(is_open) As is_open,
		COUNT(*)-( SELECT COUNT(attributes) 
				  	FROM Businesses 
				    WHERE attributes <> '{}' )  As attributes,
		COUNT(*)-( SELECT COUNT(categories) 
				  	FROM Businesses 
				    WHERE categories <> '' )  As categories,
					--we use '' because during import null values are stored as empty string for this particular column
		COUNT(*)-( SELECT COUNT(hours) 
				  	FROM Businesses 
				    WHERE hours <> '{}' )  As hours
		
FROM Businesses;