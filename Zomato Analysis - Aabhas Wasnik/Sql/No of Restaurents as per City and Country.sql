
SELECT City,count(RestaurantID) as No_of_Restaurants from mainz_csv
group by city ;


SELECT Countryname as Country ,count(RestaurantID) as No_of_Restaurants from mainz_csv m
left join countryz_csv C on M.CountryCode =C.CountryID
group by Countryname ;

