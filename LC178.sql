
--Problem: LC178
--Description: Rank Scores
-- Link : https://leetcode.com/problems/rank-scores/description/




-- LC178.sql

SELECT
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM
    Scores
ORDER BY
    score DESC