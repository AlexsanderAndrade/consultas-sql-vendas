SELECT
  p.id AS pedido_id,
  c.nome AS cliente,
  p.data_pedido,
  p.status
FROM pedidos p
INNER JOIN clientes c ON c.id = p.cliente_id
WHERE p.data_pedido BETWEEN '2026-03-01' AND '2026-03-31'
ORDER BY p.data_pedido;

SELECT
  c.nome AS cliente,
  COUNT(p.id) AS total_pedidos
FROM clientes c
INNER JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome
HAVING COUNT(p.id) > 1
ORDER BY total_pedidos DESC;

SELECT
  p.status,
  COUNT(p.id) AS total_pedidos,
  AVG(total_pedido.valor_total) AS ticket_medio
FROM pedidos p
INNER JOIN (
  SELECT
    pedido_id,
    SUM(quantidade * preco_unitario) AS valor_total
  FROM itens_pedido
  GROUP BY pedido_id
) total_pedido ON total_pedido.pedido_id = p.id
GROUP BY p.status
ORDER BY ticket_medio DESC;
