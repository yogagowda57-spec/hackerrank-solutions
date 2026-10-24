-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
-- Problem     Weather Observation Station 5
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-24, 08:49 p.m.
-- Technique   order-by-limit-aggregation
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query sorts the entire dataset by length and then lexicographically to isolate the extreme values at the top of the result set.
-- Interview   Before: "How would you find the shortest and longest strings in a table?" After: "I would use ORDER BY with length and alphabetical criteria, then LIMIT 1 to extract the extremes. This approach runs in O(N log N) time due to sorting, which is efficient for this dataset size."
-- Pitfalls    (1) Failing to include the secondary alphabetical sort order when multiple cities share the same minimum or maximum length.  (2) Assuming that LIMIT 1 will return an arbitrary result without specifying the secondary sort column.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY ASC
LIMIT 1;
SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY ASC
LIMIT 1;
