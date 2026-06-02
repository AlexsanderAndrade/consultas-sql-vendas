SELECT
  p.id AS pedido_id,
  c.nome AS cliente,
  p.data_pedido,
  SUM(ip.quantidade * ip.preco_unitario) AS valor_total
FROM pedidos p
INNER JOIN clientes c ON c.id = p.cliente_id
INNER JOIN itens_pedido ip ON ip.pedido_id = p.id
WHERE p.status <> 'cancelado'
GROUP BY p.id, c.nome, p.data_pedido
ORDER BY valor_total DESC;

SELECT
  pr.categoria,
  SUM(ip.quantidade) AS quantidade_vendida,
  SUM(ip.quantidade * ip.preco_unitario) AS faturamento
FROM itens_pedido ip
INNER JOIN produtos pr ON pr.id = ip.produto_id
INNER JOIN pedidos p ON p.id = ip.pedido_id
WHERE p.status = 'finalizado'
GROUP BY pr.categoria
ORDER BY faturamento DESC;

SELECT
  c.estado,
  COUNT(DISTINCT c.id) AS clientes,
  COUNT(p.id) AS pedidos
FROM clientes c
LEFT JOIN pedidos p ON p.cliente_id = c.id
GROUP BY c.estado
ORDER BY pedidos DESC;
