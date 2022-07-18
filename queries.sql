-- 1
SELECT prime_genre
FROM labs.applestore_mac;

-- 2
SELECT avg(rating_count_tot), prime_genre
from labs.applestore_mac
group by prime_genre
ORDER BY avg(rating_count_tot) DESC;

-- 3
SELECT count(*), prime_genre
from labs.applestore_mac
group by prime_genre;
-- 4
SELECT avg(rating_count_tot), prime_genre
from labs.applestore_mac
group by prime_genre
ORDER BY avg(rating_count_tot) ASC;

-- 5
SELECT track_name, rating_count_tot
from labs.applestore_mac
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6
SELECT track_name, user_rating, rating_count_tot
from labs.applestore_mac
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Facebook and Instagram are the most rated apps

-- 8. sudoku and king of dragons pass are the highest rated apps with a rating
-- of 5 Low rating count compared to most rated apps

-- 9. most rated apps aren't the highest rated apps, due to the fact highest rated
-- apps have significantly lower ratings count. 

10. -- Limit analysis to apps with above average rating count total 

select avg(rating_count_tot)
from labs.applestore_mac;

SELECT track_name, user_rating, rating_count_tot
from labs.applestore_mac
Where rating_count_tot >= 12957
ORDER BY user_rating DESC
LIMIT 10;

-- 11. compare avg user rating when price > 0, to when price = 0. 
-- ratings minimally higher when price = 0, so users don't care much about price
 
SELECT avg(user_rating)
from labs.applestore_mac
WHERE applestore_mac.price > 0;

SELECT avg(user_rating)
from labs.applestore_mac
WHERE applestore_mac.price = 0;









