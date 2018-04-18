--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure ATUALIZAR_CLI_SEG_MERCADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."ATUALIZAR_CLI_SEG_MERCADO" 
    (p_id IN cliente.id%type,
     p_segmercado_id IN cliente.segmercado_id%type)
    IS
    e_cliente_id_inexistente exception;
BEGIN
    UPDATE cliente
        SET segmercado_id = p_segmercado_id
        WHERE id = p_id;
    IF SQL%NOTFOUND then
        RAISE e_cliente_id_inexistente;
    END IF;
    COMMIT;

EXCEPTION
    WHEN e_cliente_id_inexistente then
        raise_application_error(-20100,'Cliente inexistente');
END;

/
