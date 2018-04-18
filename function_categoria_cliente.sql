--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function CATEGORIA_CLIENTE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CURSOPLSQL"."CATEGORIA_CLIENTE" (p_faturamento_previsto IN cliente.faturamento_previsto%type) RETURN cliente.categoria%type

IS
BEGIN

    IF p_faturamento_previsto < 10000 THEN
           RETURN 'PEQUENO';
        ELSIF p_faturamento_previsto < 50000 THEN
            RETURN 'MEDIO';
        ELSIF p_faturamento_previsto < 100000 THEN
            RETURN 'MEDIO GRANDE';
        ELSE
            RETURN 'GRANDE';
        END IF;
END;

/
