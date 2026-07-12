-- ──────────────────────────────────────────────────
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 06:58 p.m.
-- ──────────────────────────────────────────────────

SET @row = -1;

SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT LAT_N, @row := @row + 1 AS row_num
    FROM STATION
    ORDER BY LAT_N
) AS t
WHERE row_num IN (
    FLOOR(@row / 2),
    CEIL(@row / 2)
);
