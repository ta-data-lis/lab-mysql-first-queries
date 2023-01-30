![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

SELECT prime_genre FROM lab_1.applestore;

**2. Which is the genre with more apps rated?**

SELECT prime_genre, sum(rating_count_tot)
FROM lab_1.applestore
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC
LIMIT 1;

**3. Which is the genre with more apps?**

SELECT prime_genre, count(id) as count_id
FROM lab_1.applestore
GROUP BY prime_genre
ORDER BY count_id DESC
LIMIT 1;

**4. Which is the one with less?**

SELECT prime_genre, count(id) as count_id
FROM lab_1.applestore
GROUP BY prime_genre
ORDER BY count_id ASC
LIMIT 1;

**5. Take the 10 apps most rated.**

SELECT track_name, rating_count_tot
FROM lab_1.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

**6. Take the 10 apps best rated by users.**

SELECT track_name, user_rating
FROM lab_1.applestore
ORDER BY user_rating DESC
LIMIT 10;

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

R: From the the ten most rated apps, which means, the apps which received more reviews on appstore, Facebook aggreagated the most ratings, counting 2974676 rating overall, and Angry Birds the least, with 824451.


**8. Take a look on the data you retrieved in the question 6. Give some insights.**

SELECT COUNT(*), user_rating
FROM lab_1.applestore
Group by user_rating;

R: The 10 best rated apps, which means, the apps that reached higher average ratings, despise the number of ratings, all got an average rating of 5. However, from another query, it's possible to conclude that in total exist 490 apps rated with a score of 5, hence being a top of 490

**9. Now compare the data from questions 5 and 6. What do you see?**

SELECT track_name, user_rating, rating_count_tot
FROM lab_1.applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

R: The apps with more votes aren't necessarly the ones with the better rating. Per example, Facebook was the app with the highest rating count, but is the one with the lowest average rate


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

SELECT track_name, user_rating, rating_count_tot
FROM lab_1.applestore
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

- Assess: Distribution of number of apps per price
- Conclusion: The number of apps decreases, when the price of the app increases (there are 4049 free apps, and 1 app that costs 299,99)
SELECT price, COUNT(*)
FROM lab_1.applestore
GROUP BY price
Order by price;

- Asses: Distribution of the average number of ratings per price
- Conclusion: The average number of reviews tends to decrease, when the price of the app increases. However, there are some outliers for the prices that have more reviews
SELECT price, avg(rating_count_tot), count(*)
FROM lab_1.applestore
Group by price
Order by price;

- Assess: Distribution of number of ratings inside the rating range for each price
- Conclusion: The number of different rating scores is higher for cheaper apps. When the price increases, people tend to rate the app more similarly 
SELECT price, user_rating, count(*)
FROM lab_1.applestore
Group by price, user_rating
Order by price ASC;

- Assess: Is the price proportional to the rating?
- Conclusion: inconclusive --> The average price goes up and down as the average rating increases --> they aren't related --> price doens't affect the rating
- Disclaimer: The average prices are very low because most of the apps in the study are free or low price
SELECT user_rating, avg(price), COUNT(*)
FROM lab_1.applestore
GROUP BY user_rating
Order by user_rating ASC;

Final conclusion: Not only there are more apps that are cheaper, as also there are more reviews for these, which is expected since there are more cheaper apps, we would expect more users, thus, more reviews. 
However, there isn't a clear relation between price and the price, hence we can't conclude if the higher price means higher quality (rating)

## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
