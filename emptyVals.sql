SELECT column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'  
  AND table_name   = '<insert table name>'
  AND data_type = 'character varying'


--Get number of empty values by column (only varchar columns) :: TABLE Businesses
SELECT  SUM(CASE WHEN business_id ='' THEN 1 ELSE 0 END)	AS business_id_counter,
        SUM(CASE WHEN name ='' THEN 1 ELSE 0 END)	AS name_counter,
        SUM(CASE WHEN address ='' THEN 1 ELSE 0 END)	AS address_counter,
        SUM(CASE WHEN city ='' THEN 1 ELSE 0 END)	AS city_counter,
        SUM(CASE WHEN state ='' THEN 1 ELSE 0 END)	AS state,
        SUM(CASE WHEN postal_code ='' THEN 1 ELSE 0 END) AS postal_code_counter,
        SUM(CASE WHEN categories ='' THEN 1 ELSE 0 END) AS categories_counter
FROM Businesses;

--Get number of empty values by column (only varchar columns) :: TABLE Users
SELECT  SUM(CASE WHEN user_id ='' THEN 1 ELSE 0 END)	AS user_id_counter,
         SUM(CASE WHEN name ='' THEN 1 ELSE 0 END)	AS name_counter,
		 SUM(CASE WHEN yelping_since ='' THEN 1 ELSE 0 END)	AS yelping_since_counter,
		 SUM(CASE WHEN elite ='' THEN 1 ELSE 0 END)	AS elite_counter,
		 SUM(CASE WHEN friends ='' THEN 1 ELSE 0 END)	AS friends_counter
FROM Users;

--Get number of empty values by column (only varchar columns) :: TABLE Reviews
SELECT  SUM(CASE WHEN review_id ='' THEN 1 ELSE 0 END)	AS review_id_counter,
         SUM(CASE WHEN user_id ='' THEN 1 ELSE 0 END)	AS user_id_counter,
		 SUM(CASE WHEN business_id ='' THEN 1 ELSE 0 END)	AS business_id_counter,
		 SUM(CASE WHEN text ='' THEN 1 ELSE 0 END)	AS text_counter,
		 SUM(CASE WHEN date ='' THEN 1 ELSE 0 END)	AS date_counter
FROM Reviews

--Get number of empty values by column (only varchar columns) :: TABLE Checkins
SELECT SUM(CASE WHEN business_id ='' THEN 1 ELSE 0 END)	AS business_id_counter,
		 SUM(CASE WHEN date ='' THEN 1 ELSE 0 END)	AS date_counter
FROM Checkins

--Get number of empty values by column (only varchar columns) :: TABLE Tips
SELECT SUM(CASE WHEN user_id ='' THEN 1 ELSE 0 END)	AS user_id_counter,
		 SUM(CASE WHEN business_id ='' THEN 1 ELSE 0 END)	AS business_id_counter,
		 SUM(CASE WHEN text ='' THEN 1 ELSE 0 END)	AS text_counter,
		 SUM(CASE WHEN date ='' THEN 1 ELSE 0 END)	AS date_counter
FROM Tips

--Get number of empty values by column (only varchar columns) :: TABLE Photos
SELECT SUM(CASE WHEN caption ='' THEN 1 ELSE 0 END)	AS caption_counter,
		 SUM(CASE WHEN photo_id ='' THEN 1 ELSE 0 END)	AS photo_id_counter,
		 SUM(CASE WHEN business_id ='' THEN 1 ELSE 0 END)	AS business_id_counter,
		 SUM(CASE WHEN label ='' THEN 1 ELSE 0 END)	AS label_counter
FROM Photos