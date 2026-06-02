# Consultas SQL de Vendas

Projeto simples para praticar banco de dados e consultas SQL usando um cenário de vendas.

A ideia é simular uma pequena base com clientes, produtos, pedidos e itens de pedido. A partir desses dados, foram criadas consultas para treinar filtros, ordenação, junção de tabelas e relatórios.

## Tecnologias

- SQL
- Modelo relacional
- Git e GitHub

## Estrutura

```text
consultas-sql-vendas/
  docs/
    explicacao-consultas.md
  scripts/
    01_criar_tabelas.sql
    02_inserir_dados.sql
    03_consultas_basicas.sql
    04_consultas_com_join.sql
    05_relatorios.sql
```

## O que o projeto pratica

- Criação de tabelas
- Chaves primárias e estrangeiras
- Inserção de dados
- Consultas com `SELECT`
- Filtros com `WHERE`
- Ordenação com `ORDER BY`
- Relacionamento entre tabelas com `JOIN`
- Agrupamento com `GROUP BY`
- Relatórios simples de vendas

## Como usar

Execute os scripts na ordem:

1. `01_criar_tabelas.sql`
2. `02_inserir_dados.sql`
3. `03_consultas_basicas.sql`
4. `04_consultas_com_join.sql`
5. `05_relatorios.sql`

Os scripts foram escritos com comandos SQL simples para facilitar a execução em ferramentas como SQLite, MySQL Workbench, DBeaver ou extensões de banco de dados no VS Code.

## Por que criei este projeto

Criei este projeto para fortalecer minha base em banco de dados, que é importante para desenvolvimento back-end. O foco foi praticar consultas que aparecem em sistemas reais, como pedidos, produtos, clientes, estoque e relatórios.

## Melhorias futuras

- Adicionar mais consultas com datas.
- Criar consultas usando `HAVING`.
- Adaptar os scripts para MySQL com mais detalhes.
- Integrar essa base com uma API simples.
