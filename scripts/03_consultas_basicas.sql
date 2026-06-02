SELECT
  id,
  nome,
  cidade,
  estado
FROM clientes
ORDER BY nome;

SELECT
  nome,
  categoria,
  preco,
  estoque
FROM produtos
WHERE estoque <= 5
ORDER BY estoque;

SELECT
  nome,
  preco
FROM produtos
WHERE categoria = 'Informatica'
ORDER BY preco DESC;

SELECT
  id,
  cliente_id,
  data_pedido,
  status
FROM pedidos
WHERE status = 'finalizado'
ORDER BY data_pedido DESC;
