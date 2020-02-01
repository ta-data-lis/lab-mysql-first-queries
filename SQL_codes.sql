CREATE DATABASE Apple;

    
CREATE TABLE IF NOT EXISTS App (
Unnamed INT,
ID INT PRIMARY KEY,
TrackName VARCHAR (100),
Size_bytes VARCHAR (100),
Currency VARCHAR (100),
Price FLOAT,
Rating_Count_tot INT(100),
Rating_Count_ver INT(100),
User_Tating FLOAT,
User_Tating_Ver FLOAT,
Ver VARCHAR(100),
Cont_Rating VARCHAR (100),
Prime_genre VARCHAR (100),
Sup_Devices INT,
IpadSc_urls INT,
Lang INT,
Vpp_Lic INT);

select * from app;

## Q1
select distinct Prime_genre 
from app;

## Q2
select Prime_genre, 
SUM(Rating_count_tot) Totalrated
from app
group by Prime_genre
order by
Totalrated desc;

## Q3
select Prime_genre, 
Count(Prime_genre) Totalapps
from app
group by Prime_genre
order by
Totalapps desc;

## Q4
select Prime_genre, 
Count(Prime_genre) Totalapps
from app
group by Prime_genre
order by
Totalapps;

## Q5
select TrackName, 
Rating_Count_tot
from app
order by
Rating_Count_tot desc
limit 10;

## Q6
select TrackName, 
User_Tating
from app
order by
User_Tating desc
limit 10;



## Q7
create temporary table mostRated2
select TrackName, 
Rating_Count_tot, Price, User_Tating, Prime_genre
from app
order by
Rating_Count_tot desc
limit 10; 

#Q7.1 By Genre
select Prime_genre, 
Count(Prime_genre) Totalapps
from mostRated2
group by Prime_genre
order by
Totalapps desc;

#Q7.2 By Price
select Price, 
Count(Price) Totalapps
from mostRated2
group by Price
order by
Totalapps desc;


#Q7.3 By user Rating
select User_Tating, 
Count(User_Tating) Totalapps
from mostRated2
group by User_Tating
order by
Totalapps desc;

##Q7.4 Average Rating
select AVG(User_tating)
from mostRated2;

##Q7.5 Total Ratings
select sum(Rating_Count_tot)
from mostRated2;


## Q8
create temporary table bestrated2
select TrackName, 
Rating_Count_tot, Price, Size_bytes, User_tating, Prime_genre
from app
order by
User_Tating desc
limit 10;

#Q8.1 By Genre
select Prime_genre, 
Count(Prime_genre) Totalapps
from bestrated2
group by Prime_genre
order by
Totalapps desc;

#Q8.2 By Price
select Price, 
Count(Price) Totalapps
from bestrated2
group by Price
order by
Totalapps desc;


#Q8.3 Amount of user rating
select TrackName, Rating_Count_tot
from bestrated2
order by
 Rating_Count_tot desc;

##Q8.4 Average amaount of ratings
select avg(Rating_Count_tot)
from bestrated2;

## Q9 compare bestrated2 and mostrated2
CREATE TEMPORARY TABLE compareBest
SELECT 'BestRated' AS TrackName, sum(Rating_Count_tot) AS TotalRating, avg(User_Tating) AS AvgUserRating, avg(Price) AS AvgPrice
FROM bestrated2;

CREATE TEMPORARY TABLE compareMost
SELECT 'MostRated' AS TrackName, sum(Rating_Count_tot) AS TotalRating, avg(User_Tating) AS AvgUserRating, avg(Price) AS AvgPrice
FROM mostrated2;

INSERT INTO compareBest SELECT * FROM compareMost;
select * from compareBest;

## Q10
select TrackName, 
Rating_Count_tot, User_Tating
from (select * from app
where User_Tating =5) summary
order by
Rating_Count_tot desc
limit 10
;

##q11
create table PriceUserRating
SELECT '0' AS Price, avg(User_Tating) AS AvgUserRating
FROM app
where price =0;

create temporary table PriceUserRating2
SELECT '0-5' AS Price, avg(User_Tating) AS AvgUserRating
FROM app
where price between 2 and 5;
select * from PriceUserRating2;


create temporary table PriceUserRating3
SELECT '5-10' AS Price, avg(User_Tating) AS AvgUserRating
FROM app
where price between 5 and 10;
INSERT INTO PriceUserRating SELECT Price, AvgUserRating FROM PriceUserRating3;

create temporary table PriceUserRating5
SELECT '10+' AS Price, avg(User_Tating) AS AvgUserRating
FROM app
where price > 10;
INSERT INTO PriceUserRating SELECT Price, AvgUserRating FROM PriceUserRating5;
select * from PriceUserRating;


