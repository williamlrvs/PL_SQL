--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function OBTER_DESCRICAO_SEGMERCADO
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "CURSOPLSQL"."OBTER_DESCRICAO_SEGMERCADO" (p_id IN segmercado.id%type)
RETURN segmercado.descricao%type
IS
    v_descricao segmercado.descricao%type;

BEGIN
    SELECT descricao INTO v_descricao
        FROM segmercado
        WHERE id = p_id;
    RETURN v_descricao;
END;

/
