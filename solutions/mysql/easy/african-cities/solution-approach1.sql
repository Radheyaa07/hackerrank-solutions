-- ──────────────────────────────────────────────────
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 07:34 p.m.
-- ──────────────────────────────────────────────────

SELECT CITY.NAME FROM CITY
JOIN COUNTRY
ON CITY.COUNTRYCODE=COUNTRY.CODE
WHERE CONTINENT='Africa';
