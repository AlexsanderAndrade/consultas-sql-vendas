# Explicação das consultas

Este projeto foi criado para praticar consultas SQL usadas em cenários comuns de vendas.

## 01_criar_tabelas.sql

Cria quatro tabelas:

- `clientes`: dados básicos dos clientes.
- `produtos`: produtos vendidos e estoque disponível.
- `pedidos`: pedidos feitos pelos clientes.
- `itens_pedido`: produtos dentro de cada pedido.

## 02_inserir_dados.sql

Insere dados de exemplo para testar as consultas.

## 03_consultas_basicas.sql

Pratica comandos simples:

- `SELECT`
- `WHERE`
- `ORDER BY`
- filtros por status, categoria e estoque

## 04_consultas_com_join.sql

Pratica consultas combinando tabelas:

- pedido com nome do cliente;
- itens do pedido com produto e subtotal;
- total de pedidos por cliente.

## 05_relatorios.sql

Cria consultas com cara de relatório:

- valor total de cada pedido;
- faturamento por categoria;
- quantidade de clientes e pedidos por estado.

## 06_consultas_datas_having.sql

Pratica consultas um pouco mais específicas:

- pedidos dentro de um período;
- clientes com mais de um pedido usando `HAVING`;
- ticket médio por status de pedido.
