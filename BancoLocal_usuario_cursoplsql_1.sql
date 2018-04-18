DECLARE
    v_id SEGMERCADO.DESCRICAO%type := 3;
    v_descricao SEGMERCADO.DESCRICAO%type := 'varejista';

BEGIN

    --UPDATE segmercado SET descricao = UPPER(v_descricao) WHERE id = v_id;
    --v_id := 2;
    --v_descricao := 'atacadista';
    --UPDATE segmercado SET descricao = UPPER(v_descricao) WHERE id = v_id;
    --COMMIT;
    
    --INSERT INTO segmercado VALUES (v_id, v_descricao);
    --COMMIT;
    
    DELETE FROM segmercado WHERE id = v_id;
    COMMIT;

END;