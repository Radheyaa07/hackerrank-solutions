-- ──────────────────────────────────────────────────
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 07:43 p.m.
-- ──────────────────────────────────────────────────

SELECT COUNTRY.CONTINENT ,FLOOR(AVG(CITY.POPULATION)) FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE=COUNTRY.CODE
GROUP BY COUNTRY.CONTINENT;
