-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 15
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 04:30 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT ROUND(LONG_W,4) FROM STATION 
WHERE LAT_N=(SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);
