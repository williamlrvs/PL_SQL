--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_SEGMERCADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."INCLUIR_SEGMERCADO" (p_id IN segmercado.id%type, p_descricao IN segmercado.descricao%type)
IS
BEGIN

    INSERT into segmercado values(p_id, UPPER(p_descricao));
    COMMIT;

END;

/
