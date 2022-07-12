-- Scripts

-- Question 1 - Genres
SELECT DISTINCT prime_genre
FROM labsw2.applestore_windows;

-- Question 2 - Genre with more apps rated
SELECT prime_genre
FROM labsw2.applestore_windows
ORDER BY rating_count_tot DESC
LIMIT 1;

-- Question 3 - Genre with more apps
SELECT prime_genre, COUNT(id) AS apps
FROM labsw2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(id) DESC
LIMIT 1;

-- Question 4 - Genre with less apps
SELECT prime_genre, COUNT(id) AS apps
FROM labsw2.applestore_windows
GROUP BY prime_genre
ORDER BY COUNT(id) ASC
LIMIT 1;

-- Question 5 - Top 10 most rated apps
SELECT track_name
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY cont_rating DESC
LIMIT 10;

-- Question 6 Top 10 best rated apps
SELECT track_name
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY user_rating DESC
LIMIT 10;

-- Question 10 - Top 3 regarding user ratings and number of votes
SELECT track_name, user_rating, cont_rating
FROM labsw2.applestore_windows
WHERE track_name NOT LIKE '%?%'
ORDER BY user_rating DESC, cont_rating DESC
LIMIT 3;

-- Question 11 - Does people care about the price?
-- Paid/Free apps ratio
SELECT COUNT(id)
FROM labsw2.applestore_windows
WHERE price > 0
ORDER BY price ASC;

SELECT COUNT(id)
FROM labsw2.applestore_windows
WHERE price = 0
ORDER BY price ASC;

-- Number of apps by price
SELECT price, COUNT(id)
FROM labsw2.applestore_windows
GROUP BY price
ORDER BY price ASC;