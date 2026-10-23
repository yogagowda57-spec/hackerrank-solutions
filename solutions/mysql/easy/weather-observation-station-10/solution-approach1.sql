-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true
-- Problem     Weather Observation Station 10
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-23, 09:41 p.m.
-- Technique   regex-like-pattern-filtering
-- Time        O(N)
-- Space       O(N)
-- Insight     The query filters unique city names by excluding those ending in any of the five standard vowels using a series of negative pattern matches.
-- Interview   Before: "How would you filter rows based on character endings?" After: "I used the NOT LIKE operator with wildcard patterns to exclude vowels at the end of strings. This approach runs in O(N) time complexity, where N is the number of rows in the table, ensuring all duplicates are removed via DISTINCT."
-- Pitfalls    (1) Failing to include all five vowels in the exclusion criteria.  (2) Forgetting the DISTINCT keyword, which results in duplicate city names in the output.  (3) Misplacing the wildcard character, which would check the beginning or middle of the string instead of the end.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE '%A' AND CITY NOT LIKE '%E' AND CITY NOT LIKE '%I' AND CITY NOT LIKE '%O' AND CITY NOT LIKE '%U';
