-- ──────────────────────────────────────────────────
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-07-12, 08:12 p.m.
-- ──────────────────────────────────────────────────

SELECT
CASE 
WHEN Grade<8 THEN NULL 
ELSE Name
END AS Name,Grade,Marks
 FROM Students
JOIN Grades ON Marks
BETWEEN Min_Mark AND Max_Mark
ORDER BY GRADE DESC,Name,Marks;
