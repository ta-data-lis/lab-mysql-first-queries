![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
SELECT DISTINCT prime_genre
FROM `lab-mysql-first-queries-master`.applestore;

**2. Which is the genre with more apps rated?**
SELECT DISTINCT prime_genre, SUM(rating_count_tot) AS total_rating
FROM `lab-mysql-first-queries-master`.applestore AS f
GROUP BY prime_genre
ORDER BY total_rating DESC
LIMIT 1

**3. Which is the genre with more apps?**
SELECT DISTINCT prime_genre, COUNT(track_name) AS total_tracks
FROM `lab-mysql-first-queries-master`.applestore AS f
GROUP BY prime_genre
ORDER BY total_tracks DESC
LIMIT 1

**4. Which is the one with less?**
SELECT DISTINCT prime_genre, COUNT(track_name) AS total_tracks
FROM `lab-mysql-first-queries-master`.applestore AS f
GROUP BY prime_genre
ORDER BY total_tracks ASC
LIMIT 1

**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY rating_count_tot DESC
LIMIT 10

**6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating
FROM `lab-mysql-first-queries-master`.applestore AS f
ORDER BY user_rating DESC
LIMIT 10

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

**9. Now compare the data from questions 5 and 6. What do you see?**

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
