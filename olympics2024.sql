CREATE DATABASE olympics;
USE olympics;

CREATE TABLE IF NOT EXISTS olympics_medals (
    `Rank` INT,
    Country VARCHAR(250),
    Country_Code VARCHAR(10),
    Gold INT,
    Silver INT,
    Bronze INT,
    Total INT
);

## Questions:
-- Q1: Countries with Total medals ≥ 10

-- Top-performing countries with 10+ medals
SELECT Country, Country_Code, Gold, Silver, Bronze, Total
FROM olympics_medals
WHERE Total >= 10
ORDER BY Total DESC;

-- Countries with 5+ gold medals
SELECT Country, Gold, Total
FROM olympics_medals
WHERE Gold >= 5
ORDER BY Gold DESC;

-- Aggregate medals by country
SELECT Country,
       SUM(Gold) AS Total_Gold,
       SUM(Silver) AS Total_Silver,
       SUM(Bronze) AS Total_Bronze,
       SUM(Total) AS Grand_Total
FROM olympics_medals
GROUP BY Country
ORDER BY Grand_Total DESC;


