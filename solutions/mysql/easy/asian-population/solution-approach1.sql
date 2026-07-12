-- ──────────────────────────────────────────────────
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 07:32 p.m.
-- ──────────────────────────────────────────────────

SELECT 
SUM(CITY.POPULATION) FROM CITY
JOIN COUNTRY ON
CITY.COUNTRYCODE=COUNTRY.CODE
WHERE 
CONTINENT ='Asia';
