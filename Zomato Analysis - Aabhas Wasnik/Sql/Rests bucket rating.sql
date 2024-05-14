SELECT 
    CASE 
        WHEN price_range = 1 THEN '0-500' 
        WHEN price_range = 2 THEN '500-3000' 
        WHEN price_range = 3 THEN '3000-10000' 
        WHEN price_range = 4 THEN '>10000' 
    END AS price_range,
    COUNT(RestaurantID)
FROM 
    mainz_csv
GROUP BY price_range
-- ORDER BY price_range;