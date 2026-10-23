-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-- Problem     Weather Observation Station 8
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:29 p.m.
-- Technique   regex-like-pattern-matching
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters distinct city names by verifying that both the first and last characters belong to the set of vowels using pattern matching.
-- Interview   Before: "How would you filter strings based on specific character positions?" After: "I used the LIKE operator with wildcards to enforce vowel constraints at both ends, ensuring O(N) time complexity to scan the table while removing duplicates with DISTINCT."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Using incorrect wildcard placement, such as 'A%' for the last character instead of the first, leads to incorrect filtering.  (3) Omitting the parentheses around the OR conditions causes the AND operator to evaluate incorrectly due to operator precedence.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY FROM STATION WHERE (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O'OR CITY LIKE '%U') AND (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%');
