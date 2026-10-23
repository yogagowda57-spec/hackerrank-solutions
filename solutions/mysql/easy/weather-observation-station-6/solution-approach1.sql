-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
-- Problem     Weather Observation Station 6
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:10 p.m.
-- Technique   regex-like-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by checking if the first character matches any of the five specified vowels using the SQL LIKE operator.
-- Interview   Before: "How would you extract unique cities starting with vowels?" After: "I used the DISTINCT keyword to remove duplicates and the LIKE operator with wildcard patterns to filter the first character, resulting in O(N) time complexity."
-- Pitfalls    (1) Failing to use the DISTINCT keyword results in duplicate city names, violating the problem requirement.  (2) Using incorrect wildcard placement, such as '%A', would match cities ending in vowels instead of starting with them.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/select distinct CITY from STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';
