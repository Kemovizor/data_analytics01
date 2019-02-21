--top 10 cities by number of [opened] businesses in this dataset
select city,state, count(business_id)
from Businesses
where is_open = 1
group by city,state
order by 3 desc
limit 10

--"Las Vegas"	"NV"	"23784"
--"Phoenix"	"AZ"	"15471"
--"Toronto"	"ON"	"14329"
--"Charlotte"	"NC"	"7945"
--"Scottsdale"	"AZ"	"7081"
--"Calgary"	"AB"	"6445"
--"Pittsburgh"	"PA"	"5736"
--"Montréal"	"QC"	"5163"
--"Mesa"	"AZ"	"5149"
--"Henderson"	"NV"	"4026"


--top 5 users by amount of 'funny' votes 
select U.name as Reviewer, sum(R.funny) as "Total # of votes rated as funny"
from Users AS U
inner join Reviews AS R
ON U.user_id = R.user_id
group by U.name,U.yelping_since
order by 2 desc
limit 5

--"Joyce"	"21768"
--"Stefany"	"15004"
--"Christie"	"12281"
--"Karen"	"12196"
--"Soleil"	"11492"

--number of businesses per star rating + additional filters
select stars, count(business_id) as "Number of businesses"
from Businesses
where review_count >= 100
group by stars
order by 1 desc

--"5"	"354"
--"4.5"	"2488"
--"4"	"4622"
--"3.5"	"3299"
--"3"	"1534"
--"2.5"	"567"
--"2"	"166"
--"1.5"	"79"
--"1"	"15"