WITH RECURSIVE cte AS (
    SELECT 
        point1 AS diraction,
        point1, point2, cost
    FROM graph
    WHERE point1 = 'a'
    UNION
    SELECT 
        (cte.diraction || ',' || graph.point1) AS diraction,
        graph.point1, graph.point2,
        cte.cost + graph.cost
    FROM cte
        JOIN graph ON cte.point2 = graph.point1
    WHERE diraction NOT LIKE ('%' || graph.point1 || '%')
), path AS (
    SELECT 
        cost AS total_cost,
        ('{' || diraction || ',' || 'a' || '}') AS tour
    FROM cte
    WHERE LENGTH(diraction) = 7 AND point2 = 'a'
)
SELECT *
FROM path
ORDER BY total_cost, tour;