SELECT * from AppleStore;

#1.Whicharethedifferentgenres?

SELECT prime_genre, count(*) as total_count_genre from AppleStore
GROUP BY prime_genre
ORDER BY total_count_genre DESC; 


#2.Whichisthegenrewithmoreappsrated?

SELECT prime_genre, count(*) as total_count_genre, sum(rating_count_tot) as total_rating_count from AppleStore
GROUP BY prime_genre
ORDER BY total_rating_count DESC;

#Games

#3.Whichistheenrewithmoreapps?

SELECT prime_genre, count(*) as total_count_genre from AppleStore
GROUP BY prime_genre
ORDER BY total_count_genre DESC; 

#Games

#4.Whichistheonewithless?

SELECT prime_genre, count(*) as total_count_genre from AppleStore
GROUP BY prime_genre
ORDER BY total_count_genre ASC; 

#Catalogs

#5.Takethe10appsmostrated.

Select track_name, sum(rating_count_tot) as total_rating_count from AppleStore
GROUP BY 1
ORDER BY total_rating_count DESC
LIMIT 10;

#6.Takethe10appsbestratedbyusers.

Select track_name, user_rating from AppleStore
GROUP BY 1,2
ORDER BY user_rating DESC
LIMIT 10;

#7.akealookonthedatayouretrievedinhequestion5.Givesomeinsights.

Select track_name, sum(rating_count_tot) as total_rating_count, user_rating from AppleStore
GROUP BY 1,3
ORDER BY total_rating_count DESC
LIMIT 10;

#8.Takealookonthedatayouretrievedinthequestion6Givesomeinsights.

Select track_name, user_rating, sum(rating_count_tot) as total_rating_count from AppleStore
GROUP BY 1,2
ORDER BY user_rating DESC
LIMIT 10;

#9.Nowcomparethedatafromquestions5and6.Whatdoyousee?

#complete different results,moreratings often means worse userrating

#10.Howcouldyoutakethetop3regardingtheuserratingsbutalsothenumberofvotes?

Select track_name, sum(rating_count_tot) as total_rating_count, user_rating from AppleStore
GROUP BY 1,3
ORDER BY total_rating_count DESC
LIMIT 3;

Select track_name, user_rating, sum(rating_count_tot) as total_rating_count from AppleStore
GROUP BY 1,2
ORDER BY user_rating DESC
LIMIT 3;


#11.Doespeoplecareabouttheprice?Dosomequeries,commentwhyareyoudoingthemandtheresultsyouretrieve.Whatisyourconclusion?

SELECT * from AppleStore ;

Select track_name, sum(rating_count_tot) as total_rating_count, user_rating, price from AppleStore
GROUP BY 1,3,4
ORDER BY total_rating_count DESC
LIMIT 3;

Select track_name, user_rating, sum(rating_count_tot) as total_rating_count, price from AppleStore
GROUP BY 1,2,4
ORDER BY user_rating DESC
LIMIT 3;

#mostratings,whenappisforfree,betterratingwhenappisnotforfree

