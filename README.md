![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called _AppleStore.csv_. Use the _data_ table to query the data about Apple Store Apps and answer the following questions:

**1. Which are the different genres?**

```
SELECT DISTINCT prime_genre FROM mysqlFisrtQueries.applestore;
```

**2. Which is the genre with more apps rated?**

```
SELECT  prime_genre ,SUM(rating_count_tot)

FROM mysqlFisrtQueries.applestore

GROUP BY prime_genre

ORDER BY SUM(rating_count_tot) DESC

LIMIT 1
```

**3. Which is the genre with more apps?**

```
SELECT  prime_genre ,COUNT(id)

FROM mysqlFisrtQueries.applestore

GROUP BY prime_genre

ORDER BY COUNT(id) DESC

LIMIT 1
```

**4. Which is the one with less?**

```
SELECT  prime_genre ,COUNT(id)

FROM mysqlFisrtQueries.applestore

GROUP BY prime_genre

ORDER BY COUNT(id) ASC;
```

**5. Take the 10 apps most rated.**

```
SELECT  id, track_name, rating_count_tot

FROM mysqlFisrtQueries.applestore

ORDER BY rating_count_tot DESC

LIMIT 10;
```

**6. Take the 10 apps best rated by users.**

Thanks TAs!

```
SELECT  *

FROM mysqlFisrtQueries.applestore

ORDER BY user_rating DESC, rating_count_tot DESC

LIMIT 10;
```

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

```
All of the most rated Apps are for free
```

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

```
Most of the best rated apps are Games
```

**9. Now compare the data from questions 5 and 6. What do you see?**

```
From the most rated apps, the ones with best rating are Games
```

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

```
SELECT  *

FROM mysqlFisrtQueries.applestore

ORDER BY user_rating DESC, rating_count_tot DESC

LIMIT 10;
```

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

```
SELECT  *

FROM mysqlFisrtQueries.applestore

ORDER BY price DESC;
```

- The most expensive apps are bought for education.
- Ratings are mostly high

```
SELECT COUNT(*), SUM(rating_count_tot), AVG(user_rating) FROM mysqlFisrtQueries.applestore WHERE price=0;
```

'4.049', '79.973.561', '3.37'

```
SELECT COUNT(*), SUM(rating_count_tot), AVG(user_rating) FROM mysqlFisrtQueries.applestore WHERE price>0;
```

'3.093', '12.567.691', '3.72'

- The main difference is in the amount of people ranking the free apps. It makes sense that there are more people using free apps.

## Deliverables

You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers.
