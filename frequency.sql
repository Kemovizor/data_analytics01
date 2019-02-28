--top 10 cities by number of [opened] businesses in this dataset
select city,state, count(business_id)
from Businesses
where is_open = 1
group by city,state
order by 3 desc
limit 10

--us/canada states by number of businesses
SELECT state,  COUNT(business_id) AS Total_Count
FROM Businesses
GROUP BY state 
ORDER BY 2 DESC

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

--
SELECT B.latitude,B.longitude,B.review_count, COUNT(R.review_id) AS calculated_review_count, B.stars, AVG(R.stars) AS calculated_stars
FROM Businesses AS B
INNER JOIN Reviews AS R
ON B.business_id = R.business_id
GROUP BY B.latitude,B.longitude,  B.review_count, B.stars