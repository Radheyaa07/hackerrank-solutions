-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Problem     Challenges
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-25, 11:09 p.m.
-- ──────────────────────────────────────────────────

SELECT h.hacker_id,
       h.name,
       c.cnt
FROM Hackers h
JOIN (
    SELECT hacker_id, COUNT(*) AS cnt
    FROM Challenges
    GROUP BY hacker_id
) c
ON h.hacker_id = c.hacker_id
WHERE c.cnt = (
        SELECT MAX(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM Challenges
            GROUP BY hacker_id
        ) t
      )
   OR c.cnt IN (
        SELECT cnt
        FROM (
            SELECT COUNT(*) AS cnt
            FROM Challenges
            GROUP BY hacker_id
        ) x
        GROUP BY cnt
        HAVING COUNT(*) = 1
      )
ORDER BY c.cnt DESC, h.hacker_id;
