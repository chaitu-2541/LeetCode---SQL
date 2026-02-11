

--Problem: LC550
--Description: Game Play Analysis IV
-- Link : https://leetcode.com/problems/game-play-analysis-iv/description/




-- LC550.sql
WITH cte AS (
SELECT player_id, MIN(event_date) as first_login_date
FROM Activity
GROUP BY player_id
)

SELECT ROUND(COUNT(DISTINCT a.player_id) * 1.0 / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) as fraction
FROM Activity a
INNER JOIN cte ON a.player_id = cte.player_id
WHERE a.event_date = DATEADD(DAY, 1, cte.first_login_date)