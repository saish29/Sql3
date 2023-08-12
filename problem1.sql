-- We create threee copies of the same table and check which number is consecutive
-- one after the other in all the three tables

SELECT DISTINCT l1.num AS consecutiveNums
FROM logs l1, logs l2, logs l3
WHERE l1.id = l2.id + 1 AND
l2.id = l3.id + 1 AND
l1.num = l3.num AND
l2.num = l3.num;