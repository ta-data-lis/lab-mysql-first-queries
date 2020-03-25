1.
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
	Catalogs
  
2. Games

3. Still Games

4. Catalogs

5. 
Facebook
Instagram
Clash of Clans
Temple Run
Pandora - Music & Radio
Pinterest
Bible
Candy Crush Saga
Spotify Music
Angry Birds

6. 
Head Soccer
Plants vs. Zombies
Sniper 3D Assassin: Shoot to Kill Gun Game
Geometry Dash Lite
Infinity Blade
Geometry Dash
Domino's Pizza USA
CSR Racing 2
Pictoword: Fun 2 Pics Guess What's the Word Trivia
Plants vs. Zombies HD

7. Data shows that people tend to rate more apps that are for free, with no particular preferences for categories.

8. Data shows that the apps with the highest rates are most of them Games apps, some free and some with some costs.

9. It's evident that the apps that received most evaluations so far are the ones that have more users using them, like Facebook and Instagram. 
However, this made them more prone to a lower average rating, while apps that for sure are less used by phone users 
(for example almost every phone user have a FB account, but only some download games) have larger chances to get a full rating score because they have less people using them.

10. 
select track_name, user_rating, rating_count_tot, prime_genre, price
from applestore
order by user_rating desc, rating_count_tot desc
limit 3;

11. Data is clear in this case: free apps are the ones with the largest count of ratings, that means that they are the most downloaded, and the number of ratings decreases as the price raises. However, it does not seems like more expensive apps are qualitatively better since we can see no particular correlation between average rating scores and prices.
