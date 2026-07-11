-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-11, 12:19 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT ROUND(LONG_W,4) FROM STATION WHERE 
LAT_N=(SELECT MIN(LAT_N) FROM STATION WHERE LAT_N>38.7780);
