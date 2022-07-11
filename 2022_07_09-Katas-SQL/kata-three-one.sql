
## Kata 01

SELECT
DATE(events.created_at) AS "day",
events.description, COUNT(events.id) AS "count" 
FROM events 
WHERE events.name = 'trained'
GROUP BY "day", events.description 
ORDER BY "day" ;

## Kata 02

SELECT countries.capital
FROM countries
WHERE continent in ('Africa', 'Afrika') AND substring(country,1,1) = 'E'
ORDER BY countries.capital
LIMIT 

## Kata 03

SELECT 
  DATE(s.transaction_date) as "day",
  d.name as department,
  COUNT(s.id) as sale_count
  FROM department d
    JOIN sale s on d.id = s.department_id
  group by "day", department
  order by "day" asc
