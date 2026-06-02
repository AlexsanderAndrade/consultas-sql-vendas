CREATE TABLE clientes (
  id INTEGER PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cidade VARCHAR(80) NOT NULL,
  estado CHAR(2) NOT NULL,
  data_cadastro DATE NOT NULL
);

CREATE TABLE produtos (
  id INTEGER PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  categoria VARCHAR(60) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  estoque INTEGER NOT NULL
);

CREATE TABLE pedidos (
  id INTEGER PRIMARY KEY,
  cliente_id INTEGER NOT NULL,
  data_pedido DATE NOT NULL,
  status VARCHAR(30) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE itens_pedido (
  id INTEGER PRIMARY KEY,
  pedido_id INTEGER NOT NULL,
  produto_id INTEGER NOT NULL,
  quantidade INTEGER NOT NULL,
  preco_unitario DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
