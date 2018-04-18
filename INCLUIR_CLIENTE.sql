--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure INCLUIR_CLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CURSOPLSQL"."INCLUIR_CLIENTE" 
   (p_id in cliente.id%type,
    p_razao_social IN cliente.razao_social%type,
    p_CNPJ cliente.CNPJ%type ,
    p_segmercado_id IN cliente.segmercado_id%type,
    p_faturamento_previsto IN cliente.faturamento_previsto%type)
IS
    v_categoria cliente.categoria%type;
    v_CNPJ cliente.cnpj%type := p_CNPJ;
    e_null exception;
    pragma exception_init (e_null, -1400);

BEGIN
    
    v_categoria := categoria_cliente(p_faturamento_previsto);
    FORMAT_CNPJ(v_CNPJ);
    
    INSERT INTO cliente VALUES (p_id, UPPER(p_razao_social),
                                v_CNPJ,p_segmercado_id,
                                SYSDATE, p_faturamento_previsto, v_categoria);
    COMMIT;
  
EXCEPTION
    WHEN dup_val_on_index then
        raise_application_error(-20010,'Cliente já cadastrado');
    WHEN e_null then
        raise_application_error(-20015,'A coluna ID tem preenchimento obrigatório');
    WHEN others then
        raise_application_error(-20020,sqlerrm());

END;

/
