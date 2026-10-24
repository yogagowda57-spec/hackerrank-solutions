-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
-- Problem     Higher Than 75 Marks
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-24, 08:54 p.m.
-- Technique   conditional-filtering-and-multi-column-sorting
-- Time        O(N log N)
-- Space       O(N)
-- Insight     The query filters records by a numeric threshold and applies a lexicographical sort on the suffix of the name followed by a secondary numeric sort on the ID.
-- Interview   Before: "How would you filter and sort based on string suffixes?" After: "I use the RIGHT function to extract the last three characters for the primary sort key, then append the ID for the secondary sort, resulting in O(N log N) time complexity due to the sorting requirement."
-- Pitfalls    (1) Using LEFT instead of RIGHT for the primary sort key.  (2) Failing to include the ID column in the ORDER BY clause for secondary sorting.  (3) Incorrectly using a WHERE clause that excludes the threshold value instead of strictly greater than 75.
-- ──────────────────────────────────────────────────

/*
Enter your query here.
*/select name from STUDENTS WHERE MARKS>75  ORDER BY RIGHT(Name, 3),ID ASC;
