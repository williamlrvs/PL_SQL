--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package EXCEPTION_PAC
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "USER_DEV"."EXCEPTION_PAC" 
IS
    e_null exception;
    pragma exception_init (e_null, -1400);

    e_fk exception;
    pragma exception_init (e_fk, -2291); 
END;

/
