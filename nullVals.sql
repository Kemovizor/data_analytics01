--Get number of NULL values by column :: TABLE Businesses
SELECT COUNT(*) -COUNT(business_id) As business_id_counter_counter,		
			 COUNT(*)-COUNT(name) As name_counter_counter,
			 COUNT(*)-COUNT(address) As address_counter,
			 COUNT(*)-COUNT(city) As city_counter,
			 COUNT(*)-COUNT(state) As state_counter,
			 COUNT(*)-COUNT(postal_code) As postal_code_counter,
			 COUNT(*)-COUNT(latitude) As latitude_counter,
			 COUNT(*)-COUNT(longitude) As longitude_counter,
			 COUNT(*)-COUNT(stars) As stars_counter,
			 COUNT(*)-COUNT(review_count) As review_count_counter,
			 COUNT(*)-COUNT(is_open) As is_open_counter,
			 COUNT(*)-( SELECT COUNT(attributes) 
			 				FROM Businesses 
			 				WHERE attributes <> '{}' )  As attributes_counter,
			COUNT(*)-COUNT(categories) As categories_counter,
			 COUNT(*)-( SELECT COUNT(hours) 
				  	FROM Businesses 
				    WHERE hours <> '{}' )  As hours_counter
FROM Businesses;

--Get number of NULL values by column :: TABLE Users
SELECT COUNT(*) -COUNT(user_id) As user_id_counter,		
		COUNT(*)-COUNT(name) As name_counter,
		COUNT(*)-COUNT(review_count) As review_count_counter,
		COUNT(*)-COUNT(yelping_since) As yelping_since_counter,
		COUNT(*)-COUNT(useful) As useful_counter,
		COUNT(*)-COUNT(funny) As funny_counter,
		COUNT(*)-COUNT(cool) As cool_counter,
		COUNT(*)-COUNT(elite) As elite_counter,
		COUNT(*)-COUNT(friends) As friends_counter,
		COUNT(*)-COUNT(fans) As fans_counter,
		COUNT(*)-COUNT(average_stars) As average_stars_counter,
		COUNT(*)-COUNT(compliment_hot) As compliment_hot_counter,
		COUNT(*)-COUNT(compliment_more) As compliment_more_counter,
		COUNT(*)-COUNT(compliment_profile) As compliment_profile_counter,
		COUNT(*)-COUNT(compliment_cute) As compliment_cute_counter,
		COUNT(*)-COUNT(compliment_list) As compliment_list_counter,
		COUNT(*)-COUNT(compliment_note) As compliment_note_counter,
		COUNT(*)-COUNT(compliment_plain) As compliment_plain_counter,
		COUNT(*)-COUNT(compliment_cool) As compliment_cool_counter,
		COUNT(*)-COUNT(compliment_funny) As compliment_funny_counter,
		COUNT(*)-COUNT(compliment_writer) As compliment_writer_counter,
		COUNT(*)-COUNT(compliment_photos) As compliment_photos_counter
FROM Users;

--Get number of NULL values by column :: TABLE Reviews
SELECT COUNT(*) -COUNT(review_id) As review_id_counter,		
		COUNT(*)-COUNT(user_id) As user_id_counter,
		COUNT(*)-COUNT(business_id) As business_id_counter,
		COUNT(*)-COUNT(stars) As stars_counter,
		COUNT(*)-COUNT(useful) As useful_counter,
		COUNT(*)-COUNT(funny) As funny_counter,
		COUNT(*)-COUNT(cool) As cool_counter,
		COUNT(*)-COUNT(text) As text_counter,
		COUNT(*)-COUNT(date) As date_counter
FROM Reviews;

--Get number of NULL values by column :: TABLE Checkins
SELECT COUNT(*) -COUNT(business_id) As business_id_counter,		
		COUNT(*)-COUNT(date) As date_counter
FROM Checkins;

--Get number of NULL values by column :: TABLE Tips
SELECT COUNT(*) -COUNT(user_id) As user_id_counter,		
		COUNT(*)-COUNT(business_id) As business_id_counter,
		COUNT(*)-COUNT(text) As text_counter,
		COUNT(*)-COUNT(date) As date_counter,
		COUNT(*)-COUNT(compliment_count) As compliment_count_counter
FROM Tips;

--Get number of NULL values by column :: TABLE Photos
SELECT COUNT(*) -COUNT(caption) As caption_counter,		
		COUNT(*)-COUNT(photo_id) As photo_id_counter,
		COUNT(*)-COUNT(business_id) As business_id_counter,
		COUNT(*)-COUNT(label) As label_counter
FROM Photos;