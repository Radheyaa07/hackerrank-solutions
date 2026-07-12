-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 19
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 04:58 p.m.
-- ──────────────────────────────────────────────────

SELECT ROUND(
    SQRT(
        POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)
    ),4
) FROM STATION;
