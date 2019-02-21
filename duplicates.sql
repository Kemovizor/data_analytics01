
--Get total number of duplicates :: TABLE Businesses
SELECT SUM(temp_tbl.numOfOccurrences)
		FROM (
			SELECT COUNT(business_id) numOfOccurrences
			FROM Businesses
			GROUP BY name, address, city, state
			HAVING  COUNT(business_id)>1
			ORDER BY 1 DESC
			) AS temp_tbl