# 1
SELECT DISTINCT Prime_genre
FROM App;

SELECT*
FROM app; 

# 2 
SELECT Prime_genre, count(TrackName) AS Total_rates
FROM App
GROUP BY Prime_genre
ORDER BY Total_rates DESC
LIMIT 1;

#3
SELECT Prime_genre, sum(TrackName) AS Total_apps
FROM App
GROUP BY Prime_genre
ORDER BY Total_apps DESC
LIMIT 1;

#4
SELECT Prime_genre, sum(TrackName) AS Total_apps
FROM App
GROUP BY Prime_genre
ORDER BY Total_apps ASC;

#5
SELECT TrackName, Rating_Count_tot
FROM App
ORDER BY Rating_Count_tot DESC
LIMIT 10;

#6
SELECT TrackName, User_Tating
FROM App
ORDER BY User_Tating DESC
LIMIT 10;


#10

SELECT TrackName, Rating_Count_tot, User_Tating
FROM App
ORDER BY Rating_Count_tot DESC, User_Tating DESC 
LIMIT 3;


#11
SELECT Rating_Count_tot, User_Tating, Price
FROM app
ORDER BY Rating_Count_tot DESC, Price DESC
LIMIT 10;
# trying to see if have paid apps in the most rated apps


SELECT Rating_Count_tot, User_Tating, Price
FROM app
WHERE Rating_Count_tot > 100000
ORDER BY Rating_Count_tot DESC, User_Tating DESC
LIMIT 10;

#taking into consideration only apps that have some number of ratings 


SELECT Rating_Count_tot, User_Tating, Price
FROM app
WHERE Rating_Count_tot > 100000
ORDER BY Rating_Count_tot DESC, price DESC, User_Tating DESC
LIMIT 10;

#If we take into consideration the number of ratings and it could be the number of interested people in the app, and choose a number of from wich we want to take into consideration the apps abserved, we can see that apps not free tend to have less total ratings

SELECT Rating_Count_tot, User_Tating, Price
FROM app
WHERE price > 2 AND price < 10
ORDER BY User_Tating DESC, price DESC
LIMIT 100;


# Considering only paid apps. Im doing this querry to see the user rating and prices not to high in order to conclued if higher ratings correspond to lesser prices. But no! whitin the people who rated paid apps, wich are far less that the ones who rate free apps, there isn't any patter for for better ratings and highr or lower prices

SELECT User_Tating, AVG(price) 
FROM App
GROUP BY User_Tating
ORDER BY User_Tating DESC;

SELECT AVG(User_tating) 
FROM App
WHERE price = 0;

SELECT AVG(User_tating) 
FROM App
WHERE price > 20;

SELECT AVG(User_tating) 
FROM App
WHERE price > 10 AND Rating_Count_tot > 10000;

#We dont have apps that cost more that 10 and have more that 10000 reviews 

SELECT AVG(User_tating) 
FROM App
WHERE price = 0 AND Rating_Count_tot > 10000;

SELECT AVG(User_tating) 
FROM App
WHERE price > 2 AND Rating_Count_tot > 10000;