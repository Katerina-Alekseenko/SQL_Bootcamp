CREATE TABLE IF NOT EXISTS graph (
    -- id INTEGER PRIMARY KEY,
   point1 TEXT NOT NULL,
   point2 TEXT NOT NULL,
   cost INT NOT NULL
);

INSERT INTO graph(point1, point2, cost) 
VALUES 
('a', 'b', 10),
('b', 'a',  10),
('a', 'c',  15),
('c', 'a',  15),
('a', 'd',  20),
('d', 'a',  20),
('b', 'd',  25),
('d', 'b',  25),
('c', 'd',  30),
('d', 'c',  30),
('b', 'c',  35),
('c', 'b',  35);

WITH RECURSIVE cte AS (
  -- выбираем все строки из таблицы graph, где point1 равен 'a'.
    SELECT 
        point1 AS diraction,
        point1, point2, cost
    FROM graph
    WHERE point1 = 'a'
    UNION
    -- соединяем таблицу cte с таблицей graph
    -- добавляем к пути только те города, которые соединены с последним городом в пути
    SELECT 
        (cte.diraction || ',' || graph.point1) AS diraction,
        graph.point1, graph.point2,
        cte.cost + graph.cost
    FROM cte JOIN graph ON cte.point2 = graph.point1
    -- исключаем дублирование городов
    WHERE diraction NOT LIKE ('%' || graph.point1 || '%')
),
path AS (
  SELECT 
    cost AS total_cost,
    ('{' || diraction || ',' || point2 || '}') AS tour
  FROM cte
  WHERE LENGTH(diraction) = 7 AND point2 = 'a'
)
SELECT *
FROM path
WHERE total_cost = (
  SELECT MIN(total_cost)
  FROM path
)
ORDER BY total_cost, tour;