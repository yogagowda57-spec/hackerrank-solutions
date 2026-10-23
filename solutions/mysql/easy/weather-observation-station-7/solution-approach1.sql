-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
-- Problem     Weather Observation Station 7
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:14 p.m.
-- Technique   regex-like-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the final character matches any of the five specified vowels using the SQL LIKE operator.
-- Interview   Before: "How would you extract specific string patterns from a database column?" After: "I would use the LIKE operator with wildcards to match suffixes, ensuring O(N) time complexity to scan the table and applying DISTINCT to satisfy the requirement of removing duplicates."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names, violating the problem requirement.  (2) Using incorrect wildcard placement, such as 'A%', would match cities starting with vowels instead of ending with them.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT  DISTINCT CITY FROM STATION WHERE CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';
