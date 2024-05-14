SELECT 
    CASE 
		WHEN rating  > 0 AND rating <= 1 THEN '0-1'
		WHEN rating  > 1 AND rating <= 2 THEN '1-2'
        WHEN rating  > 2 AND rating <= 3 THEN '2-3'
        WHEN rating  > 3 AND rating <= 4 THEN '3-4'
        WHEN rating  > 4 AND rating <= 5 THEN '4-5'
    END AS Rating_Range,
    COUNT(RestaurantID) as No_of_Restaurants
FROM 
    mainz_csv
GROUP BY 
    Rating_Range 
ORDER BY 
    Rating_Range;