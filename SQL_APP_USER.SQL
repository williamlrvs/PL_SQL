EXEC user_dev.incluir_cliente(5 ,'PRIMEIRO CLIENTE INCLUIDO POR USER_APP','23456',2,100000);

CREATE OR REPLACE PROCEDURE APL_INCLUIR_CLIENTE
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_CNPJ in cliente.CNPJ%type,
    p_segmercado_id in cliente.segmercado_id%type,
    p_faturamento_previsto in cliente.faturamento_previsto%type)
IS
BEGIN
    incluir_cliente(p_id ,p_razao_social,p_cnpj,p_segmercado_id,p_faturamento_previsto);
END;

EXEC apl_incluir_cliente(6 ,'SEGUNDO CLIENTE INCLUIDO POR USER_APP','23456',2,100000);

EXEC user_dev.cliente_pac.incluir_cliente(10 ,'INCLUIDO POR USER_APP VIA PACKAGE','24890',2,100000);

EXEC cliente_pac.incluir_cliente(11 ,'SEGUNDO INCLUIDO POR USER_APP VIA PACKAGE','24890',2,100000);

EXEC cliente_pac.excluir_cliente(10);

EXEC cliente_pac.incluir_cliente(12 ,'CLIENTE COM 5 PARAMETROS POR USER_APP VIA PACKAGE','24890',2,100000);

EXEC cliente_pac.incluir_cliente(13 ,'CLIENTE COM 3 PARAMETROS POR USER_APP VIA PACKAGE','14890');

create or replace PROCEDURE APL_INCLUIR_CLIENTE
   (p_id in cliente.id%type,
    p_razao_social in cliente.razao_social%type,
    p_CNPJ in cliente.CNPJ%type ,
    p_segmercado_id in cliente.segmercado_id%type,
    p_faturamento_previsto in cliente.faturamento_previsto%type)
IS
BEGIN
    cliente_pac.incluir_cliente(p_id ,p_razao_social,p_cnpj,p_segmercado_id,p_faturamento_previsto);
END;

EXEC apl_incluir_cliente(null ,'INCLUIDO POR USER_APP PARA TESTAR VALOR NULO','24890',2,100000);

CREATE OR REPLACE PROCEDURE INCLUIR_SEGMENTO
    (P_ID IN SEGMERCADO.ID%TYPE,
     P_DESCRICAO IN SEGMERCADO.DESCRICAO%TYPE)
IS
BEGIN
    INSERT INTO SEGMERCADO VALUES (P_ID, UPPER(P_DESCRICAO));
EXCEPTION
    WHEN exception_pac.e_null then
        raise_application_error (-20015,'Campo com preenchimento obrigatório');
END;

EXEC INCLUIR_SEGMENTO (null ,'SEGMENTO INCLUIDO POR USER_APP');

EXEC APL_INCLUIR_CLIENTE(30 ,'INCLUIDO POR USER_APP VIA PACKAGE','34789',2,100000);

set SERVEROUTPUT ON
EXEC dbms_output.put_line(cliente_pac.g_cli_lim_fatur_pequeno);