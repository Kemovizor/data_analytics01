CREATE TABLE Businesses
(
business_id nchar(22) not null primary key,
name nchar(70) not null, -- Col
address nchar(130) not null,
city nchar(100) not null,
state nchar(5) not null,
postal_code nchar(10) not null,
latitude float not null,
longitude float not null,
stars float not null,
review_count int null,
is_open int null,
hours nchar[30][10]
)

CREATE TABLE BusinessesAttributes
(
	business_attribute_id int not null primary key,
	business_id int not null foreign key references Businesses(business_id),
	attribute_id int not null foreign key references Attributes(attribute_id),
	attr_val bit not null 
)

CREATE TABLE Attributes
(
attribute_id int not null primary key,
name NCHAR	
)