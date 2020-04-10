![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**

**2. Which is the genre with more apps rated?**

**3. Which is the genre with more apps?**

**4. Which is the one with less?**

**5. Take the 10 apps most rated.**

**6. Take the 10 apps best rated by users.**

**7. Take a look on the data you retrieved in the question 5. Give some insights.**

**8. Take a look on the data you retrieved in the question 6. Give some insights.**

**9. Now compare the data from questions 5 and 6. What do you see?**

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**

**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 

Answers:

1. Which are the different genres?

2. Which is the genre with more apps rated?

3. Which is the genre with more apps?

4. Which is the one with less?

5. Take the 10 apps most rated.

6. Take the 10 apps best rated by users.

7. Take a look on the data you retrieved in the question 5. Give some insights.
Social Media apps were the most rated, also because they have the biggest amount of users.

8. Take a look on the data you retrieved in the question 6. Give some insights.
The best rated are simple and popular games.

9. Now compare the data from questions 5 and 6. What do you see?
That the amount of users doesn't represents the quality of the app and that apps that provide some kind of enjoyment and fun on utilizing it are the best rated.

10. How could you take the top 3 regarding the user ratings but also the number of votes?
Merging the two previous queries by name and grouping by ratings and number of votes and ordering by the MAX(by name) 3

11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
They purchase more free apps and give more good ratings to good paid apps