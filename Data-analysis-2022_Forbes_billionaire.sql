
SELECT * 
FROM 2022_forbes_billionaires;

SELECT COUNT(DISTINCT industry)
FROM 2022_forbes_billionaires;

SELECT name, country, industry, source            -- Can select only that element which contains same datatype 
FROM 2022_forbes_billionaires;

SELECT Count(*) 
FROM 2022_forbes_billionaires
Where country = 'Italy';

SELECT Count(country)
FROM 2022_forbes_billionaires
Where country <> 'India';

SELECT Count(country), country 
FROM 2022_forbes_billionaires
WHERE country = 'Italy'
GROUP BY country;

SELECT *
FROM 2022_forbes_billionaires
WHERE NOT Country IN ('United States', 'France');   -- You can Write  WHERE country NOT IN ('','') 

SELECT DISTINCT industry
FROM 2022_forbes_billionaires
WHERE Country IN ('United States');

SELECT *
FROM 2022_forbes_billionaires
WHERE MyUnknownColumn < '10';

SELECT Count(country), country
FROM 2022_forbes_billionaires
WHERE (age < '40' AND industry = 'Technology ')
GROUP BY Country;

SELECT *
FROM 2022_forbes_billionaires
WHERE country NOT IN ('china', 'India');    -- WHERE NOT country = 'India' AND NOT country = 'China';

DESCRIBE 2022_forbes_billionaires;

SELECT *
FROM 2022_forbes_billionaires
ORDER BY country, industry;

SELECT *
FROM 2022_forbes_billionaires
WHERE country = 'United States'
ORDER BY country, industry, Source;

SELECT COUNT(source), source
FROM 2022_forbes_billionaires
WHERE country = 'United States' AND industry = 'Finance & Investments '
GROUP BY country, industry, Source;

DESC 2022_forbes_billionaires;

INSERT INTO 2022_forbes_billionaires (name, country, source, industry)
VALUES ('roshan','India', 'Technology', 'Technology');         -- Not able to Insert the values Why?

SELECT *
FROM 2022_forbes_billionaires    -- Just to check if any column contains empty value
WHERE MyUnknownColumn IS NULL;     -- You can write WHERE country IS NOT NULL;

SET SQL_SAFE_UPDATES = 0;
UPDATE 2022_forbes_billionaires
SET networth = '$500B', age = 24, Source = 'Tech'
Where name = 'roshan';

DELETE FROM 2022_forbes_billionaires
Where age IS NULL;

SELECT *
FROM 2022_forbes_billionaires
WHERE industry = 'Fashion & Retail '
LIMIT 10;                      -- Means return Top 10 values

SELECT MAX(age) AS Max_age,
MIN(age) AS Min_age,
MAX(networth) AS Maxima_worth,
MIN(networth) AS Minima_worth,
COUNT(DISTINCT country) AS Total_country,
COUNT(DISTINCT industry) AS Total_industry
FROM 2022_forbes_billionaires;

SELECT *
FROM 2022_forbes_billionaires
WHERE country LIKE 'I%a';     -- % any number of charactr &  _ means single character

SELECT * 
FROM 2022_forbes_billionaires
WHERE country NOT IN ('India', 'China','france', 'Ireland');

SELECT * , COUNT(industry) AS UK_industries
FROM 2022_forbes_billionaires
WHERE country IN ('United kingdom')
Group by industry;

SELECT *
FROM 2022_forbes_billionaires
WHERE age BETWEEN 20 AND 30
AND MyUnknownColumn NOT BETWEEN 10 AND 500;      -- OR can be use IN instead of Between

SELECT *
FROM 2022_forbes_billionaires
WHERE name BETWEEN 'Alex Atallah ' AND 'ELON Musk'       -- BETWEEN operation can also be applied in String, & date format
ORDER BY name;       -- ORDER BY command is mandatory	 -- BETWEEN operation works on alphabetical order (A to E)

SELECT 
    COUNT(industry), industry
FROM
    2022_forbes_billionaires
GROUP BY industry
ORDER BY COUNT(industry) DESC;

Select *
From 2022_forbes_billionaires;

Select * 
From 2022_forbes_billionaires
WHERE source LIKE '%Tesla%';

Select COUNT(source), source 
FROM 2022_forbes_billionaires AS rich_list
GROUP BY source
Order BY COUNT(source) DESC;

SELECT MyUnknownColumn AS id
FROM 2022_forbes_billionaires;

SELECT * 
FROM 2022_forbes_billionaires AS rich_list
WHERE age BETWEEN 20 AND 30
ORDER BY age DESC;

SELECT Count(name), COUNT(country)
FROM 2022_forbes_billionaires AS rich_list
WHERE age BETWEEN 20 AND 30
ORDER BY age DESC;

SELECT name, Concat(name,', ', age,', ', country,', ', industry) AS ALL_details
FROM 2022_forbes_billionaires;         -- Remaianing concept of aliase while joining two tables

SELECT country AS rich_count, COUNT(country) AS NO_of_Billionaires
FROM 2022_forbes_billionaires
GROUP BY country
Having COUNT(country) > 50
order by NO_of_Billionaires DESC;      -- Cant use WHERE thats why Having statement

SELECT name, country, source, industry, -- comma in the last is essential
Case   
  WHEN country = 'United states' THEN 'Baby Boomers'
  WHEN country = 'India' THEN 'Millenials'
  ELSE 'Golden Age'
  END AS news_column
FROM 2022_forbes_billionaires;

SELECT name, country, source, industry, networth, -- comma in the last is essential
Case   
  WHEN networth < '$107 B' THEN 'Baby Boomers'
  WHEN networth Between '$106 B' AND '$158 B' THEN 'Millenials' -- now networth varchar format is working properly
  ELSE 'Golden Age'
  END AS news_column
FROM 2022_forbes_billionaires;

