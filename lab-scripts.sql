-- Scripts

-- Question 1
SELECT DISTINCT prime_genre
FROM labsw2.applestore_windows;

-- Question 2
SELECT prime_genre
FROM labsw2.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 1;

-- Question 3
SELECT prime_genre, COUNT(id) AS apps
FROM labsw2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(id) DESC
LIMIT 1;

-- Question 4
SELECT prime_genre, COUNT(id) AS apps
FROM labsw2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(id) ASC
LIMIT 1;

-- Question 5
SELECT track_name, cont_rating
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY cont_rating DESC
LIMIT 10;

-- Question 6
SELECT track_name, user_rating
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY user_rating DESC
LIMIT 10;

-- Question 10
SELECT track_name, user_rating, cont_rating
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY user_rating DESC, cont_rating DESC
LIMIT 3;







SELECT *
FROM labsw2.applestore_windows;