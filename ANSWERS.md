# Answers
##### 1. Which are the different genres?

##### SQL answer
```sql
select distinct prime_genre from base_de_dados.applestore;
```
##### Result
```
Games,Productivity,Weather,Shopping,Reference,Finance,Music,Utilities,Travel,Social Networking,Sports,Business,Health & Fitness,Entertainment,Photo & Video,Navigation,Education,Lifestyle,Food & Drink,News,Book,Medical,Catalogs
```

##### 2. Which is the genre with more apps rated?

##### SQL answer
```sql
select prime_genre, rating_count_tot from applestore order by rating_count_tot desc;
```
##### Result
```
Social Networking
```

##### 3. Which is the genre with more apps?

##### SQL answer
```sql
select prime_genre, count(id) from applestore group by prime_genre order by count(id) desc;
```
##### Result
```
Games = 3808

```

##### 4. Which is the one with less?

##### SQL answer
```sql
select prime_genre, count(id) from applestore group by prime_genre order by count(id);
```
##### Result
```
Catalogs = 10

```

##### 5. Take the 10 apps most rated.

##### SQL answer
```sql
select track_name, rating_count_tot from applestore order by rating_count_tot desc limit 10;
```
##### Result
```
'Facebook', '2974676'
'Instagram', '2161558'
'Clash of Clans', '2130805'
'Temple Run', '1724546'
'Pandora - Music & Radio', '1126879'
'Pinterest', '1061624'
'Bible', '985920'
'Candy Crush Saga', '961794'
'Spotify Music', '878563'
'Angry Birds', '824451'
```

##### 6. Take the 10 apps best rated by users.

##### SQL answer
```sql
select track_name, user_rating from applestore order by user_rating desc limit 10;
```
##### Result
```
':) Sudoku +', '5'
'King of Dragon Pass', '5'
'TurboScan™ Pro - document & receipt scanner: scan multiple pages and photos to PDF', '5'
'Plants vs. Zombies', '5'
'Learn to Speak Spanish Fast With MosaLingua', '5'
'Plants vs. Zombies HD', '5'
'The Photographer\'s Ephemeris', '5'
'▻Sudoku +', '5'
'Flashlight Ⓞ', '5'
'Infinity Blade', '5'
```

##### 7. Take a look on the data you retrieved in the question 5. Give some insights.

##### SQL answer
```sql
select track_name, rating_count_tot, prime_genre, price from applestore  order by rating_count_tot desc limit 10;
```
##### Result
```
The 10 most rated apps are free and of these, 40% are from the game genre, 20% are social networks and 20% music.
```

##### 8. Take a look on the data you retrieved in the question 6. Give some insights.

##### SQL answer
```sql
select track_name, user_rating, prime_genre from applestore order by user_rating desc limit 10;
```
##### Result
```
The 10 apps best rated by users and of these, 90% are paid apps. 
```

##### 9. Now compare the data from questions 5 and 6. What do you see?

##### SQL answer
```sql
select track_name, user_rating, prime_genre from applestore order by user_rating desc limit 10;
```
##### Result
```
The 10 apps best rated by users are paid and the 10 most rated are free. The number of ratings are significatly different between the two results. 
```
##### 10. How could you take the top 3 regarding the user ratings but also the number of votes?

##### SQL answer
```sql
select track_name, user_rating, rating_count_tot, prime_genre from applestore where user_rating = 5 
order by rating_count_tot desc limit 3;
```
##### Result
```
'Head Soccer', '5', '481564', 'Games'
'Plants vs. Zombies', '5', '426463', 'Games'
'Sniper 3D Assassin: Shoot to Kill Gun Game', '5', '386521', 'Games'
```

##### 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

##### SQL answer
```sql
select track_name, rating_count_tot, user_rating, price, prime_genre from applestore order by rating_count_tot desc limit 20;
```
##### Result
```
From the queries made throughout the lab and In the last query above, we can see the 20 most rated apps comparing with the prices. The most evaluated applications are mostly free. 
````