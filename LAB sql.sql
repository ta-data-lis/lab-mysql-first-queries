#1

SELECT labsql1.titles.title_id, labsql1.titleauthor.au_id, labsql1.publishers.pub_id, labsql1.authors.au_lname, labsql1.authors.au_fname
FROM labsql1.titles
JOIN labsql1.titleauthor ON labsql1.titles.title_id = labsql1.titleauthor.title_id
JOIN labsql1.authors ON labsql1.authors.au_id = labsql1.titleauthor.au_id 
JOIN labsql1.publishers ON labsql1.publishers.pub_id = labsql1.titles.pub_id ;

#2

SELECT labsql1.titles.title, labsql1.titleauthor.au_id, labsql1.publishers.pub_name, labsql1.authors.au_lname, labsql1.authors.au_fname, COUNT(labsql1.titles.title)
FROM labsql1.titles
JOIN labsql1.titleauthor ON labsql1.titles.title_id = labsql1.titleauthor.title_id
JOIN labsql1.authors ON labsql1.authors.au_id = labsql1.titleauthor.au_id 
JOIN labsql1.publishers ON labsql1.publishers.pub_id = labsql1.titles.pub_id
GROUP BY labsql1.titles.title, labsql1.titleauthor.au_id, labsql1.publishers.pub_id, labsql1.authors.au_lname, labsql1.authors.au_fname;

# 3

SELECT labsql1.titles.title, labsql1.titleauthor.au_id, labsql1.publishers.pub_name, labsql1.authors.au_lname, labsql1.authors.au_fname, COUNT(labsql1.titles.title)
FROM labsql1.titles
JOIN labsql1.titleauthor ON labsql1.titles.title_id = labsql1.titleauthor.title_id
JOIN labsql1.authors ON labsql1.authors.au_id = labsql1.titleauthor.au_id 
JOIN labsql1.publishers ON labsql1.publishers.pub_id = labsql1.titles.pub_id
GROUP BY labsql1.titles.title, labsql1.titleauthor.au_id, labsql1.publishers.pub_id, labsql1.authors.au_lname, labsql1.authors.au_fname
ORDER BY labsql1.titles.title DESC
LIMIT 3;

# 4

SELECT labsql1.titleauthor.au_id, labsql1.publishers.pub_name, labsql1.authors.au_lname, labsql1.authors.au_fname, COUNT(labsql1.titles.title)
FROM labsql1.titles
LEFT JOIN labsql1.titleauthor ON labsql1.titles.title_id = labsql1.titleauthor.title_id
LEFT JOIN labsql1.authors ON labsql1.authors.au_id = labsql1.titleauthor.au_id 
LEFT JOIN lab2.publishers ON lab2.publishers.pub_id = lab2.titles.pub_id
GROUP BY lab2.titles.title, lab2.titleauthor.au_id, lab2.publishers.pub_id, lab2.authors.au_lname, lab2.authors.au_fname
ORDER BY lab2.titles.title DESC;

