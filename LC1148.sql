

--Problem: LC1148
--Description: Article Views I
-- Link : https://leetcode.com/problems/article-views-i/description/




-- LC1148.sql


SELECT DISTINCT author_id as id from Views where author_id = viewer_id ORDER BY id;