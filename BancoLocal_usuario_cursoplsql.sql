-- Criando tabela
CREATE TABLE SegMercado(ID NUMBER(5),Descricao VARCHAR2(100));
-- restringindo valores iguais ou nulos
ALTER TABLE Segmercado ADD CONSTRAINT SegMercado_id_pk PRIMARY KEY(ID);
--tabela Cliente
CREATE TABLE Cliente
  ( ID NUMBER(5),
    Razao_Social VARCHAR2(100),
    CNPJ VARCHAR2(20),
    SegMercado_id NUMBER(5),
    Data_Inclusao DATE,
    Faturamento_Previsto NUMBER(10,2),
    Categoria VARCHAR2(20));
--restricao de integridade
ALTER TABLE Cliente ADD CONSTRAINT Cliente_id_pk PRIMARY KEY(ID);
--chave estrangeira
ALTER TABLE Cliente ADD CONSTRAINT Cliente_SegMercado_fk FOREIGN KEY(SegMercado_id) REFERENCES Segmercado(id) ;
    