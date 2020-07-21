
SELECT * FROM applestore;

/* 1st Question */
SELECT prime_genre FROM applestore
GROUP BY prime_genre;


/* 2nd Question */
SELECT prime_genre, COUNT(rating_count_tot)
FROM applestore
GROUP BY prime_genre;

/* 3rd Question */
SELECT prime_genre, COUNT(*) as counts
FROM applestore
GROUP BY prime_genre
ORDER BY counts ASC
LIMIT 5;

/* 4th Question */
SELECT prime_genre, COUNT(*) as counts
FROM applestore
GROUP BY prime_genre
ORDER BY counts DESC;

/* 5th Question */
SELECT rating_count_tot, track_name FROM applestore
ORDER BY rating_count_tot DESC
LIMIT 10;

/* 6th Question */
SELECT user_rating, track_name FROM applestore
ORDER BY user_rating DESC
LIMIT 10;


/* 7th Question */
/*  Rating count doesn't give any information about the rating quality. The more people rate, doesn't give info if they rated pos/neg, it just gives info about which app received attention. */


/* 8th Question */
/* The increment of the rating is only 0.5, which means there will be a lot of ratings with 5. How to choose which one of those are the important 10 to display? Best is to take an */
/* additional parameter into consideration that lets us decide about the improtance of the ratings i.e. the rating count. Taking into consideration both rating value and count, we can */
/* decide that the most important ratings with 5 are those who also have the highest rating count. */

/* 9th Question */
SELECT user_rating, rating_count_tot, track_name FROM applestore
ORDER BY user_rating DESC
/* How to make it order by both criteria? */
/* all 4.5 ordered desc by rating_count_tot, all 4 ordered desc by rating_count_tot, all 3.5 ordered desc by rating_count_tot */
/* Sorting according to both criteria would be the crucial step */

/* 10th Question */
SELECT user_rating, rating_count_tot, track_name FROM applestore
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

/* 11th Question */
/* needs a query */
/* it's not the most expensive who are rated the best*/
SELECT user_rating, price FROM applestore
ORDER BY price DESC
LIMIT 10;

SELECT user_rating, price FROM applestore
ORDER BY user_rating DESC
LIMIT 100;

/* Amongst the top 20 ratings is no price over €10. The most expensive are not best rated. It means that for a lower price the satisfaction seems to grow because the cost/benefit relationship */
/* is better. When people pay a high price, they have higher expectation and hence it is easier to disappoint i.e. result in lower rating. */