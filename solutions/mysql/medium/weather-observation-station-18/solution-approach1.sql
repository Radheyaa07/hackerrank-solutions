-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-11, 12:34 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/
SELECT ROUND((MAX(LAT_N)-MIN(LAT_N)+MAX(LONG_W)-MIN(LONG_W)),4) FROM STATION;
