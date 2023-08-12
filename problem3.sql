-- We filter the dates out from the last thirty days which will be "2019-06-28" and count the distinct users in that date range
-- we group by activity_date or day because we want active users daily by date

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN "2019-06-28" AND "2019-07-27"
GROUP BY day;