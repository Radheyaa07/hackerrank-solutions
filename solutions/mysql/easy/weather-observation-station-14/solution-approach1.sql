-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 14
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 05:05 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT TRUNCATE(MAX(LAT_N),4) FROM STATION
WHERE LAT_N<137.2345 ;
