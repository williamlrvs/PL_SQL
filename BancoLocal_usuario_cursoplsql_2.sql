EXECUTE INCLUIR_CLIENTE(1, 'SUPERMERCADO XYZ', '12345', NULL, 150000);
EXECUTE INCLUIR_CLIENTE(2, 'SUPERMERCADO IJR', '67890', NULL, 90000);
EXECUTE INCLUIR_CLIENTE(3, 'Industria RTY', '12378', NULL, 110000);
SELECT * FROM CLIENTE;

VARIABLE g_cnpj varchar2(10)
EXECUTE :g_cnpj := '12345'
PRINT g_cnpj

EXECUTE FORMAT_CNPJ(:g_cnpj)
PRINT g_cnpj
--------------------------------------------------------------------
DECLARE 
    v_id NUMBER;
    v_segmercado_id NUMBER;
BEGIN
    v_id := 1;
    v_segmercado_id := 2;
    atualizar_cli_seg_mercado(p_id => v_id, p_segmercado_id => v_segmercado_id);
END;

select * from cliente
----------------------------------------------------------------------------
DECLARE
    v_segmercado_id cliente.segmercado_id%type := 3;
    CURSOR cur_cliente is SELECT id FROM cliente;

BEGIN

    FOR cli_rec IN cur_cliente LOOP
        ATUALIZAR_CLI_SEG_MERCADO(cli_rec.id, v_segmercado_id);
    END LOOP;

    COMMIT;

END;

select * from cliente
----------------------------------------------
EXECUTE INCLUIR_CLIENTE(1,'SUPERMERCADO XYZ','12345',2,150000)
EXECUTE ATUALIZAR_CLI_SEG_MERCADO(10,1)