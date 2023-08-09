-- We create a intermediate table where we find the best bus timings for each passenger based
-- on their arrival times

-- Then we simply count the number of passengers for each bus by joining it to the buses table

WITH pass_arrival AS (
    SELECT p.passenger_id, MIN(b.arrival_time) AS arrival_time
    FROM passenger p INNER JOIN buses b ON p.arrival_time <= b.arrival_time
    GROUP BY b.passenger_id
)

SELECT b.bus_id, COUNT(pass_arrival.arrival_time) AS passenger_cnt
FROM buses b LEFT JOIN pass_arival ON b.arrival_time = pass_arrival.arrival_time
GROUP BY b.bus_id
ORDER BY b.bus_id;