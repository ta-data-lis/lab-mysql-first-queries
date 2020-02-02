![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
SELECT DISTINCT prime_genre #distinct Get Rid of Duplicates
FROM applestore;

**2. Which is the genre with more apps rated?**
SELECT prime_genre, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC; #is used to sort the data returned in descending order.

**3. Which is the genre with more apps?**
SELECT max(prime_genre) AS SmallestPrime_Genre
FROM applestore;

**4. Which is the one with less?**
SELECT MIN(prime_genre) AS SmallestPrime_Genre
FROM applestore;

**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot FROM applestore ORDER BY rating_count_tot DESC limit 10;

**6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating FROM applestore ORDER BY user_rating DESC limit 10; #when i use the Distinct comand, i have other result, why?

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Social media as Facebook and Instagram are the most popular ones, but the game Clash of Clans has a rate of only 2% different of the second position.
Most of the positions are occupied by games (40%), and except for the bible, 90% is focused in entertainment.

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
Although the focus remains on games, those that appear as the best grades by users are not the ones that appear in the overall position.
As the rate is the same (5), I would like to know how the positions are defined...

**9. Now compare the data from questions 5 and 6. What do you see?**
SELECT track_name, rating_count_tot, user_rating FROM applestore ORDER BY rating_count_tot DESC, user_rating DESC limit 10; 
#the order that i put "order by", defined with one come first and will be priority.
The first position was occupied regarding the total rate, and Facebook was in the first position even with the worst score date by the user.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, rating_count_tot, user_rating FROM applestore ORDER BY user_rating DESC, rating_count_tot DESC limit 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT track_name, price, user_rating, rating_count_tot FROM applestore ORDER BY price DESC, user_rating DESC LIMIT 10;

in a range of 10 positions:
the better rate given for the users was for the prices 29,90/ 23,90.
and when we analize for the price view the most expensive ones (299,99/ 249,99) we can see that the rating total count is super lower when compared with the others.
people don't seem to care when they have to pay for the music service.



## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
