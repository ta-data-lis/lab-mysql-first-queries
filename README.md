![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv*. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
'Book','111'
'Business','57'
'Catalogs','10'
'Education','453'
'Entertainment','535'
'Finance','104'
'Food & Drink','63'
'Games','3808'
'Health & Fitness','180'
'Lifestyle','144'
'Medical','23'
'Music','138'
'Navigation','46'
'News','75'
'Photo & Video','349'
'Productivity','178'
'Reference','64'
'Shopping','122'
'Social Networking','167'
'Sports','114'
'Travel','81'
'Utilities','248'
'Weather','72'

**2. Which is the genre with more apps rated?**
'Social Networking', '2974676'

**3. Which is the genre with more apps?**
'Games', '3808'

**4. Which is the one with less?**
'Catalogs', '10'

**5. Take the 10 apps most rated.**
'Facebook','2974676'
'Instagram','2161558'
'Clash of Clans','2130805'
'Temple Run','1724546'
'Pandora - Music & Radio','1126879'
'Pinterest','1061624'
'Bible','985920'
'Candy Crush Saga','961794'
'Spotify Music','878563'
'Angry Birds','824451'


**6. Take the 10 apps best rated by users.**
':) Sudoku +','5'
'King of Dragon Pass','5'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF','5'
'Plants vs. Zombies','5'
'Learn to Speak Spanish Fast With MosaLingua','5'
'Plants vs. Zombies HD','5'
'The Photographer\'s Ephemeris','5'
'▻Sudoku +','5'
'Flashlight Ⓞ','5'
'Infinity Blade','5'


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Out of 10, 4 are games, 2 are social network and 2 are music apps
Every app is free

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
One app is free: Flashlight, but the majority are "payed apps"
The average price is 3.99USD

**9. Now compare the data from questions 5 and 6. What do you see?**
The 10 most rated app are not the 10 best rated app

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
I would sort by the number of rating, then from this table, I would take the 3 most rated apps:

'Geometry Dash','5','266440'
'Head Soccer','5','481564'
'Sniper 3D Assassin: Shoot to Kill Gun Game','5','386521'



**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

1. I want to see if there is a relation between the price and the note (I took into account only the 1000 most rated)
SELECT most_rated_most_rating.user_rating, ROUND(AVG(most_rated_most_rating.price),2) as "AVERAGE PRICE"
FROM (
	SELECT *
	FROM (SELECT *
			FROM applestore.data as d
			ORDER BY d.rating_count_tot DESC
			LIMIT 1000) most_rated
	ORDER BY most_rated.user_rating DESC
) most_rated_most_rating
GROUP BY most_rated_most_rating.user_rating
ORDER BY most_rated_most_rating.user_rating

RESULT:
'2','0.00'
'2.5','0.08'
'3','0.06'
'3.5','0.64'
'4','0.77'
'4.5','0.57'
'5','1.01'

It looks like the more the app has a high rate, the more it cost.


2. I want to see if the price has a relation with the number of rating (and maybe the number of download)
SELECT highest_price.price, SUM(highest_price.rating_count_tot) AS TOTAL_RATING
FROM (SELECT *
		FROM applestore.data as d
		/*ORDER BY d.price DESC*/
		LIMIT 10000) highest_price
GROUP BY highest_price.price
ORDER BY TOTAL_RATING DESC

'0','79973561'
'0.99','5164269'
'1.99','2344233'
'2.99','1914890'
'4.99','1261380'
'6.99','891718'
'3.99','458940'
'9.99','266815'
'7.99','138360'
'5.99','48060'
'14.99','26563'
'8.99','13921'
'19.99','12549'
'13.99','7255'
'24.99','4215'
'15.99','3528'
'29.99','2879'
'39.99','1498'
'12.99','1390'
'11.99','1073'
'16.99','982'
'74.99','927'
'249.99','773'
'49.99','504'
'59.99','423'
'22.99','159'
'18.99','79'
'17.99','77'
'99.99','71'
'21.99','64'
'34.99','49'
'299.99','41'
'23.99','5'
'27.99','1'
'20.99','0'

It looks like the more an app is costly, the less it is rated (I took this data as I don't have the number of download)

I want to calculate the % of app rated if it is free compared to the % of rated paid app:

Number of paid app
SELECT SUM(paid_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d
		WHERE d.price >0 ) paid_app
Result: 12567691

number of free app:
SELECT SUM(free_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d
		WHERE d.price <0.01 ) free_appSELECT SUM(free_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d
		WHERE d.price <0.01 ) free_app   
Result: 79973561

number of app:
SELECT SUM(total_app.rating_count_tot)
FROM (SELECT *
		FROM applestore.data as d) total_app       
Result: 92541252

(12567691/92541252)* 100 = 13.5% of rated paid app
(79973561/92541252)*100 = 86.5% of rated free app


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
