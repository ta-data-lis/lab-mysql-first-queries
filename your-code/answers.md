**1. Which are the different genres?**
A list of the genres:
	Book
	Business
	Catalogs
	Education
	Entertainment
	Finance
	Food & Drink
	Games
	Health & Fitness
	Lifestyle
	Medical
	Music
	Navigation
	News
	Photo & Video
	Productivity
	Reference
	Shopping
	Social Networking
	Sports
	Travel
	Utilities
	Weather


**2. Which is the genre with more apps rated?**
The genre with the most apps rated is Games with 52.630.139 ratings total.

How to: 
Group the data by genre and sum up the column rating_count_tot for each genre.
Order by the new column rating_count_sum descending and limit the result to 1.


**3. Which is the genre with more apps?**
The genre with the most apps in total is Games with 3.808 apps.

How to:
Group the data by genre and count the column id for each genre.
Order by the new column id_sum descending and limit the result to 1.


**4. Which is the one with less?**
The genre with the least apps in total is Catalogs with 10 apps.

How to:
Like #3, only order ascending instead.


**5. Take the 10 apps most rated.**
The 10 apps (ids and names):
id			track_name				rating_count_tot
284882215	Facebook				2974676
389801252	Instagram				2161558
529479190	Clash of Clans			2130805
420009108	Temple Run				1724546
284035177	Pandora - Music & Radio	1126879
429047995	Pinterest				1061624
282935706	Bible					985920
553834731	Candy Crush Saga		961794
324684580	Spotify Music			878563
343200656	Angry Birds				824451

How to:
Select all apps ordered by the rating_count_tot descending and limit the result to 10.


**6. Take the 10 apps best rated by users.**
This is 10 apps with top rating (in total 490 apps have the top rating):
id			track_name																							rating_count_tot
1105928070	Pan Book 4: Capitol Rising																			5
1095581857	??????????????????????????????????????????-??????????????????????????????????????????????????????	5
1145920150	Huetopia																							5
1145541321	Flow Free: Hexes																					5
1063785850	SenseSleep - Train Your Brain To Sleep Better														5
1028623510	PewDiePie: Legend of the Brofist																	5
1144397186	?????????????????? ?????????????????? - ???????????????????????????????????????						5
1087422283	Akuarella																							5
1055359142	SkySafari 5 Plus																					5
1095571204	KIXIFY - Buy & Sell Sneakers																		5

How to:
Select all apps ordered by the user_rating descending and limit the result to 10.
But as there is more apps than 10 with the top rating, this query could also result in a different subset of 10 apps. 
The data was not cleaned yet, so there is lines with ? instead of titles. This could be a result of different encodings in the original data (e.g. apps with names in cyrillic), that were not transferred correctly into the csv dataset. A data analysis would normally start by cleaning or filtering the input data before analysing.


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
The apps with the most ratings are all very well known apps with a lot of users. 
A lot of users means more people who can do the rating. So this makes sense.
The sorting of the data is very clear and definite as a count of downloads is used.


**8. Take a look on the data you retrieved in the question 6. Give some insights.**
This data is a bit arbitrary. An app can only be rated on a fixed scale between 0 and 5. There is actually a lot of apps with the top rating value of 5, in total 490 apps.
Any of those 490 apps could appear in the SELECT for 10 of the top-rated apps.


**9. Now compare the data from questions 5 and 6. What do you see?**
None of the 10 most-rated-apps appears in the selection of the 10 best-rated-apps.
This could be because of them not being rated best or them just being filtered out by only showing 10 of 490.
If the query#5 is extended with the user_rating, you can see that none of the 10 most-rated-apps has a top rating of 5. So the two queries don't overlap, even if the query#6 would show all 490 best-rated-apps, none of the query#5 result would appear.


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
id			track_name									user_rating	rating_count_tot
487119327	Head Soccer									5			481564
350642635	Plants vs. Zombies							5			426463
930574573	Sniper 3D Assassin: Shoot to Kill Gun Game	5			386521

How to:
Select all apps ordered by user_rating descending and rating_count_tot descending. Then limit the result to 3.


**11. Does people care about the price?**
That is hard to tell. 
Checking the extremes of the data, by sorting by the two columns user_rating and price in different directions, leaves the answer inconclusive:
There is expensive apps with good ratings.	(user_rating DESC, price DESC)
There is expensive apps with bad ratings.	(user_rating ASC, price DESC)
There is free apps with good ratings.		(user_rating DESC, price ASC)
There is free apps with bad ratings.		(user_rating ASC, price ASC)

Another way to check is by calculating a Pearsons r to see if there is a linear correlation. This can be done by the following SELECT Statement. But as I did not look at the scatterplot of the data, assuming a linear correlation is risky, and a Pearsons r can only be used for linear correlations. 
The result of the calculation is 0.0492, which is close to 0 and thus implies that there is no linear correlation between the two variables user_rating and price. There might still exist a nonlinear correlation.
#Pearsons r:
SELECT ((SUM(user_rating * price) - (SUM(user_rating) * SUM(price)) / COUNT(*)))
		/ (SQRT(SUM(user_rating * user_rating) - (SUM(user_rating) * SUM(user_rating)) / COUNT(*))
		* SQRT(SUM(price * price) - (SUM(price) * SUM(price)) / COUNT(*))
		) AS pearsons_r
 FROM lab1_applestore.applestore_windows;
 #--0.049200854570057316