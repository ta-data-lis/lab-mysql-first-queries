![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab | My first queries

Please, import the .csv database called *AppleStore.csv* corresponding to your operating system. Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. Which are the different genres?**
The genres are the following:
	Games
	Productivity
	Weather
	Shopping
	Reference
	Finance
	Music
	Utilities
	Travel
	Social Networking
	Sports
	Business
	Health & Fitness
	Entertainment
	Photo & Video
	Navigation
	Education
	Lifestyle
	Food & Drink
	News
	Book
	Medical

**2. Which is the genre with more apps rated?**
The genre with more apps rated is 'Games' with 94 apps rated.

**3. Which is the genre with more apps?**
The genre with more apps is 'Games' with 94 apps.

**4. Which is the one with less?**
The genre with less apps is 'Medical' with 1 app.

**5. Take the 10 apps most rated.**
ID          TRACK NAME                                      rating_count_tot
284882215	Facebook	                                    2974676
284035177	Pandora - Music & Radio	                        1126879
282935706	Bible	                                        985920
324684580	Spotify Music	                                878563
343200656	Angry Birds	                                    824451
362949845	Fruit Ninja Classic	                            698516
359917414	Solitaire	                                    679055
293778748	PAC-MAN	                                        508808
341232718	Calorie Counter & Diet Tracker by MyFitnessPal	507706
295646461	The Weather Channel: Forecast, Radar & Alerts	495626

**6. Take the 10 apps best rated by users.**
ID          TRACK NAME                                      user_rating
353372460	Learn to Speak Spanish Fast With MosaLingua	    5
342548956	TurboScan??? Pro - document & re ...        	5
350642635	Plants vs. Zombies	                            5
285994151	:) Sudoku +	                                    5
335545504	King of Dragon Pass	                            5
363282253	Plants vs. Zombies HD	                        5
304770340	Skat	                                        4.5
329887910	Parking Mania	                                4.5
329981776	Sudoku???	                                    4.5
331177714	Starbucks	                                    4.5

**7. Take a look on the data you retrieved in the question 5. Give some insights.**
- Out of the top 10 most rated apps, only one has a price of USD 1.99, the rest are free.
- The most rated app belongs to Social Networking genre and from the top 10, 4 apps belong to games genre and 2 to music genre, the rest belong to other different genres.
- 90% out of the top10 apps have more than 10 languages to choose from, 50% of the apps have more than 15 languages to choose from and only 20% of them have more than 30 languages to choose from.

id          track_name                                  rating_count    prime_genre         price   lang.num
284882215	Facebook                	                    2974676	    Social Networking	0	    29
284035177	Pandora - Music & Radio	                        1126879	    Music	            0	    1
282935706	Bible	                                        985920	    Reference	        0	    45
324684580	Spotify Music	                                878563	    Music	            0	    18
343200656	Angry Birds                                 	824451      Games	            0	    10
362949845	Fruit Ninja Classic	                            698516	    Games	            1.99	13
359917414	Solitaire	                                    679055	    Games	            0	    11
293778748	PAC-MAN	                                        508808	    Games	            0	    10
341232718	Calorie Counter & Diet Tracker by MyFitnessPal	507706	    Health & Fitness	0	    19
295646461	The Weather Channel: Forecast, Radar & Alerts	495626	    Weather	            0	    33

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
- 60% of the top10 user rated apps have a 5/5 score, the other 40% follows with a 4.5/5.
- Only 10% of the top10 user rated apps is free to download, the rest hace prices varying from USD 9.99 to 0.99.
- 70% of the top10 user rated apps belong to the Games genre, the rest belong to different genres.

ID          TRACK NAME                                              user_rating     prime_genre     price
353372460	Learn to Speak Spanish Fast With MosaLingua	                5	        Education	    4.99
342548956	TurboScan??? Pro - document & receipt scanner (...)     	5	        Business	    4.99
350642635	Plants vs. Zombies	                                        5	        Games	        0.99
285994151	:) Sudoku +	                                                5	        Games	        2.99
335545504	King of Dragon Pass	                                        5	        Games	        9.99
363282253	Plants vs. Zombies HD	                                    5	        Games	        0.99
304770340	Skat	                                                    4.5	        Games	        3.99
329887910	Parking Mania	                                            4.5	        Games	        0.99
329981776	Sudoku???	                                                4.5	        Games	        2.99
331177714	Starbucks	                                                4.5	        Food & Drink	0

**9. Now compare the data from questions 5 and 6. What do you see?**
The most rated apps are not related at all with the best rated apps. Therefore, it means that the more reviews you get the chances of having a high rating score by users decreases.

We can also see that games are one of the most popular genres of apps, so we can find them easily in the top 10 of most rated apps and top 10 of best rated apps too.

We can also note that apps that are not free have better ratings than free apps, but that logic doesn't translate to apps that have the most votes, actually the 90% of the most rated apps are free. So we can tell that price influences positively in the rating of the app but negatively in the number of ratings that the app receives.

**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
If we multiply user rating and number of votes, we retrieve a value that is positively taking into account the number of votes but also the average rate of the app. Therefore, having a lot of votes becomes important but if your average rating is low it will negatively impact to the score of the app, whereas if the amount of votes is not that high but the average review is high, it will positively affect to the score.

ID          TRACK NAME                    user_rating     rating_count          absolute_score
284882215	Facebook	                    3.5	          2974676	            10411366
284035177	Pandora - Music & Radio	        4	          1126879	            4507516
282935706	Bible	                        4.5	          985920	            4436640


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

As we have seen in the queries done above (and also mentioned), of course that people cares about price. As we can observe, the most rated apps, hence, the most downloaded ones, are mostly free. It means that the people is more welcoming to free apps since it doesn't have an economic impact on them.

On the other hand, we can observe that some of the best rated apps are not free, but the number of ratings in these apps are quite lower in this case, hence, people tends to download less apps if they have a price.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
