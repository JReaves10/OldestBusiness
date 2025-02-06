-- What is the oldest business on each continent?
SELECT sub.continent,
	   sub.country,
	   sub.business,
	   sub.year_founded
FROM(
	SELECT continent,
	       country,
	   	   business,
	       year_founded
	FROM businesses
	JOIN countries
	USING(country_code)
) AS sub
JOIN(
	SELECT continent,
		   MIN(year_founded) AS year_founded
	FROM businesses
	JOIN countries
	USING(country_code)
	GROUP BY continent
) AS year_sub
  ON sub.continent = year_sub.continent
 AND sub.year_founded = year_sub.year_founded
ORDER BY year_founded;

-- How many countries per continent lack data on the oldest businesses
-- Does including the `new_businesses` data change this?
WITH all_businesses AS(
	SELECT *
	FROM businesses
	UNION ALL
	SELECT *
	FROM new_businesses
)
SELECT continent,
	   COUNT(country) AS countries_without_businesses
FROM countries
LEFT JOIN all_businesses
USING(country_code)
WHERE business IS NULL
GROUP BY continent;

-- Which business categories are best suited to last over the course of centuries?
SELECT continent,
	   category,
	   MIN(year_founded) AS year_founded
FROM countries
INNER JOIN businesses USING(country_code)
INNER JOIN categories USING(category_code)
GROUP BY continent, category
ORDER BY continent, category;