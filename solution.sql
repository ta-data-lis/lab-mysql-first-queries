#Challenge 1 - Step1:
SELECT titleauthor.title_id as TitleID, titleauthor.au_id AS AuthorID, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 as sales_royalty from titleauthor titleauthor
LEFT JOIN titles titles ON titleauthor.title_id = titles.title_id 
Left JOIN sales sales ON sales.title_id = titleauthor.title_id 
ORDER by 3 DESC




#1. Which are the different genres?

SELECT Genre as Gender, COUNT(ID) AS GenderCount from Ratings 
GROUP by Gender

#2. Which is the genre with more apps rated?

SELECT Genre as Gender, SUM(CurrentVersionRatings) AS Appsrating from Ratings
GROUP by Gender


#3. Which is the genre with more apps?

SELECT Genre as Gender, COUNT(ID) AS GenderCount from Ratings 
GROUP by Gender 
ORDER by 2 DESC

#4. Which is the one with less?

SELECT Genre as Gender, COUNT(ID) AS GenderCount from Ratings 
GROUP by Gender 
ORDER by 2 ASC

#5. Take the 10 apps most rated.

SELECT AppName as App, SUM(CurrentVersionRatings) AS Appsrating from Ratings
GROUP by AppName
ORDER by 2 DESC
LIMIT 10

#6. Take the 10 apps best rated by users.

SELECT AppName as App, TotalRatings as UserRatings from Ratings
ORDER by 2 DESC
limit 10

#7. Take a look on the data you retrieved in the question 5. Give some insights.

SELECT AppName as App, CurrentVersionRatings  AS Appsrating, Genre as Gender from Ratings
ORDER by 2 DESC
LIMIT 10


#8. Take a look on the data you retrieved in the question 6. Give some insights.

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender from Ratings
ORDER by 2 DESC
limit 10

#9. Now compare the data from questions 5 and 6. What do you see?

#Questions are a bit 'Difuse' :-)

#10. How could you take the top 3 regarding the user ratings but also the number of votes?

#Already considered

#11. Does people care about the price? Definetly yes

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender, Price as UserPrice from Ratings
ORDER by 2 DESC
limit 10

SELECT AppName as App, TotalRatings * CurrentVersionRatings as UserRatings, Genre as Gender, Price as UserPrice from Ratings
ORDER by 4 DESC
limit 10

