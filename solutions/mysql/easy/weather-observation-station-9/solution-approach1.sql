-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true
-- Problem     Weather Observation Station 9
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:39 p.m.
-- Technique   regex-like-pattern-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by excluding those starting with any of the five vowels using a series of negative pattern matches.
-- Interview   Before: "How would you filter rows based on starting characters?" After: "I use the NOT LIKE operator with wildcard patterns to exclude specific prefixes. This approach runs in O(N) time, where N is the number of rows, and ensures uniqueness with DISTINCT."
-- Pitfalls    (1) Failing to use DISTINCT results in duplicate city names, violating the problem requirement.  (2) Forgetting to include all five vowels in the NOT LIKE conditions leads to incorrect filtering of starting characters.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%';
