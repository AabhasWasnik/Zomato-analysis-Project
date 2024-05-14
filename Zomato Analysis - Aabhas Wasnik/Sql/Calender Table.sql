Select Date ,
year(Date) Year,
month(Date) Month,
day(date) Day ,
-- monthname(Date) monthname,Quarter(Date)as Quarter,
concat(year(Date),'-',monthname(Date)) YearMonth, 
weekday(Date) Weekday,
dayname(date) Week_Day_Name, 

case when monthname(date) in ('January' ,'February' ,'March' )then 'Q1'
when monthname(date) in ('April' ,'May' ,'June' )then 'Q2'
when monthname(date) in ('July' ,'August' ,'September' )then 'Q3'
else  'Q4' end as Quarter,

case 
when monthname(date)='January' then 'FM11'
when monthname(date)='February' then 'FM12'
when monthname(date)='March' then 'FM1'
when monthname(date)='April'then'FM2'
when monthname(date)='May' then 'FM3'
when monthname(date)='June' then 'FM4'
when monthname(date)='July' then 'FM5'
when monthname(date)='August' then 'FM6'
when monthname(date)='September' then 'FM7'
when monthname(date)='October' then 'FM8'
when monthname(date)='November' then 'FM9'
when monthname(date)='December'then 'FM10'
end as Financial_Month,

case when monthname(date) in ('January' ,'February' ,'March' )then 'Q4'
when monthname(date) in ('April' ,'May' ,'June' )then 'Q1'
when monthname(date) in ('July' ,'August' ,'September' )then 'Q2'
else  'Q3' end as Financial_Quarter

from mainz_csv ;