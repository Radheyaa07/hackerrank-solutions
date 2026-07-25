-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
-- Problem     Ollivander's Inventory
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-25, 04:36 p.m.
-- ──────────────────────────────────────────────────

SELECT w.id,wp.age,w.coins_needed,w.power
FROM Wands w
JOIN Wands_Property wp
ON w.code=wp.code
JOIN (
    SELECT wp.age, w.power,
    MIN(w.coins_needed) as min_coins
    FROM Wands w
    JOIN Wands_Property wp
    ON w.code=wp.code
    WHERE is_evil=0
    GROUP BY wp.age,w.power
) AS m
ON wp.age=m.age
AND w.power=m.power
AND w.coins_needed=m.min_coins
WHERE wp.is_evil=0
ORDER BY w.power DESC,wp.age DESC;
