
--Get total number of duplicates :: TABLE Businesses
SELECT SUM(temp_tbl.numOfOccurrences) -COUNT(*) AS "Total number of duplicates"
		FROM (
			SELECT COUNT(business_id) numOfOccurrences
			FROM Businesses
			GROUP BY name, address, city, state
			HAVING  COUNT(business_id)>1
			ORDER BY 1 DESC
			) AS temp_tbl
--RESULT: 188

--Get total number of duplicates :: TABLE Users
SELECT SUM(temp_tbl.numOfOccurrences) -COUNT(*) AS "Total number of duplicates"
		FROM (
			SELECT name, yelping_since, COUNT(user_id) AS numOfOccurrences
			FROM Users
			GROUP BY name,yelping_since
			HAVING  COUNT(user_id)>1
			ORDER BY 3 DESC
			) AS temp_tbl
--RESULT: 14

--Get total number of duplicates :: TABLE Reviews
SELECT SUM(temp_tbl.numOfOccurrences) -COUNT(*) AS "Total number of duplicates"
		FROM (
			SELECT COUNT(review_id) AS numOfOccurrences
			FROM Reviews
			GROUP BY user_id, business_id,date
			HAVING  COUNT(review_id)>1
			ORDER BY 1 DESC
			) AS temp_tbl
--RESULT: 18

--Get total number of duplicates :: TABLE Checkins
SELECT SUM(temp_tbl.numOfOccurrences) -COUNT(*) AS "Total number of duplicates"
		FROM (
			SELECT COUNT(business_id) AS numOfOccurrences
			FROM Checkins
			GROUP BY date
			HAVING  COUNT(business_id)>1
			ORDER BY 1 DESC
			) AS temp_tbl
--RESULT: 2

--Get total number of duplicates :: TABLE Tips
SELECT SUM(temp_tbl.numOfOccurrences) -COUNT(*) AS "Total number of duplicates"
		FROM (
			SELECT user_id, business_id, date, COUNT(compliment_count) AS numOfOccurrences
			FROM Tips
			GROUP BY user_id, business_id, date
			HAVING  COUNT(compliment_count)>1
			ORDER BY 4 DESC
			) AS temp_tbl
--RESULT: 177
--Get total number of duplicates :: TABLE Photos
-- (???)