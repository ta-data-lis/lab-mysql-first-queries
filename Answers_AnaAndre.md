7. Take a look on the data you retrieved in the question 5. Give some insights.

They are all free apps. They're mainly social networking and games. Total rating counts is 14 830 816.



8. Take a look on the data you retrieved in the question 6. Give some insights.

Except for one, they are all get paid apps. They're mainly games. Also, some of them have very low rating counts so they are not really representative.
Total rating counts is 1 093 779.



9. Now compare the data from questions 5 and 6. What do you see?

The top 10 most rated apps are not the same as the top 10 best rated by users.
In fact, if we compare their total rating counts, the 10 most rated have 14 times more voters than the 10 best rated apps.
In a general way, they have the same genre and more or else the same restrictions by content rating.



10. How could you take the top 3 regarding the user ratings but also the number of votes?

First, I would have to find a representative minimum value of votes for the app to be considered representative and exclude all the apps bellow that value. Then, I would select the top 3 best rated apps.



11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

#to calculate how many rating counts have the free apps 
SELECT sum(rating_count_tot)FROM applestore where price = 0 order by price desc;
#retrieves 77047488

#to calculate how many rating counts have the get paid apps 
SELECT sum(rating_count_tot)FROM applestore where price <> 0 order by price desc;
#retrieves 12441495

I can conclude that free apps rating counts are around 6 times higher than the get paid apps counts so I would say that yes, the users care about price.