
select distinct year(Date) as Year , count(*) as No_of_Restaurants
from mainz_csv
group by year(Date) 
Order by year(Date);

select distinct monthname(Date) as Month , count(*) as No_of_Restaurants
from mainz_csv
group by monthname(Date) 
Order by monthname(Date);

select distinct Quarter(Date) as Quarter , count(*) as No_of_Restaurants
from mainz_csv
group by Quarter(Date) 
Order by Quarter(Date)