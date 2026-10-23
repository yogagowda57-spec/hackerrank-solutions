-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
-- Problem     Weather Observation Station 12
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:49 p.m.
-- Technique   regex-like-pattern-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by applying negative pattern matching against both the start and end characters using the NOT LIKE operator.
-- Interview   Before: "How would you filter strings based on multiple character constraints?" After: "I use the DISTINCT keyword to remove duplicates and combine multiple NOT LIKE conditions to exclude cities starting or ending with vowels, resulting in O(N) time complexity."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Neglecting to group the start and end conditions with parentheses can lead to incorrect logical precedence.  (3) Omitting case-insensitive checks if the database collation is case-sensitive.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY FROM STATION WHERE(CITY NOT LIKE '%A' AND CITY NOT LIKE '%E' AND CITY NOT LIKE '%I' AND CITY NOT LIKE '%O' AND CITY NOT LIKE '%U') AND (CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%');
