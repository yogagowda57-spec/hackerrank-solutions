-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-24, 08:54 p.m.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/select name from STUDENTS WHERE MARKS>75  ORDER BY RIGHT(Name, 3),ID ASC;
