SELECT adverts.category_name, costs.cost, AVG(costs.cost) AS Average_cost
FROM adverts
JOIN costs
ON adverts.advert_id=costs.advert_id 
GROUP BY adverts.category_name
HAVING Average_cost<500;
