--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package CLIENTE_PAC
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "USER_DEV"."CLIENTE_PAC" IS

    PROCEDURE ATUALIZAR_CLI_SEG_MERCADO
    (p_id in cliente.id%type,
     p_segmercado_id in cliente.segmercado_id%type);

    PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO
    (p_id in cliente.id%type,
     p_faturamento_previsto in cliente.faturamento_previsto%type);

    PROCEDURE EXCLUIR_CLIENTE
    (p_id in cliente.id%type);

    PROCEDURE INCLUIR_CLIENTE 
    (p_id in cliente.id%type,
     p_razao_social in cliente.razao_social%type,
     p_CNPJ in cliente.CNPJ%type ,
     p_segmercado_id in cliente.segmercado_id%type,
     p_faturamento_previsto in cliente.faturamento_previsto%type);

    PROCEDURE INCLUIR_CLIENTE 
    (p_id in cliente.id%type,
     p_razao_social in cliente.razao_social%type,
     p_CNPJ in cliente.CNPJ%type);
     
     PROCEDURE FORMAT_CNPJ
     ( p_cnpj IN OUT VARCHAR2);
     
     g_cli_lim_fatur_pequeno number(10) := 10000;
     g_cli_lim_fatur_medio number(10) := 50000;
     g_cli_lim_fatur_medio_grande number(10) := 100000;

END;

/
