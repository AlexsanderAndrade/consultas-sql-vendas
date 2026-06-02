INSERT INTO clientes (id, nome, cidade, estado, data_cadastro) VALUES
(1, 'Mariana Souza', 'Belo Horizonte', 'MG', '2026-01-10'),
(2, 'Joao Pereira', 'Contagem', 'MG', '2026-01-15'),
(3, 'Carla Mendes', 'Betim', 'MG', '2026-02-02'),
(4, 'Rafael Lima', 'Sao Paulo', 'SP', '2026-02-20'),
(5, 'Ana Ribeiro', 'Belo Horizonte', 'MG', '2026-03-05');

INSERT INTO produtos (id, nome, categoria, preco, estoque) VALUES
(1, 'Mouse sem fio', 'Informatica', 79.90, 18),
(2, 'Teclado mecanico', 'Informatica', 249.90, 7),
(3, 'Cadeira de escritorio', 'Moveis', 699.90, 4),
(4, 'Suporte para notebook', 'Acessorios', 89.90, 12),
(5, 'Monitor 24 polegadas', 'Informatica', 899.90, 5),
(6, 'Mesa compacta', 'Moveis', 399.90, 3);

INSERT INTO pedidos (id, cliente_id, data_pedido, status) VALUES
(1, 1, '2026-03-10', 'finalizado'),
(2, 2, '2026-03-12', 'finalizado'),
(3, 1, '2026-03-18', 'em separacao'),
(4, 3, '2026-04-01', 'finalizado'),
(5, 5, '2026-04-05', 'cancelado');

INSERT INTO itens_pedido (id, pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 2, 79.90),
(2, 1, 4, 1, 89.90),
(3, 2, 2, 1, 249.90),
(4, 2, 5, 1, 899.90),
(5, 3, 3, 1, 699.90),
(6, 4, 1, 1, 79.90),
(7, 4, 6, 1, 399.90),
(8, 5, 4, 2, 89.90);
