SELECT
  p.id AS pedido_id,
  c.nome AS cliente,
  p.data_pedido,
  p.status
FROM pedidos p
INNER JOIN clientes c ON c.id = p.cliente_id
ORDER BY p.data_pedido DESC;

SELECT
  p.id AS pedido_id,
  c.nome AS cliente,
  pr.nome AS produto,
  ip.quantidade,
  ip.preco_unitario,
  (ip.quantidade * ip.preco_unitario) AS subtotal
FROM itens_pedido ip
INNER JOIN pedidos p ON p.id = ip.pedido_id
INNER JOIN clientes c ON c.id = p.cliente_id
INNER JOIN produtos pr ON pr.id = ip.produto_id
ORDER BY p.id;

SELECT
  c.nome AS cliente,
  COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome
ORDER BY total_pedidos DESC;
