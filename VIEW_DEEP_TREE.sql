--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View DEPTREE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "USER_DEV"."DEPTREE" ("NESTED_LEVEL", "TYPE", "SCHEMA", "NAME", "SEQ#") AS 
  select d.nest_level, o.object_type, o.owner, o.object_name, d.seq#
  from deptree_temptab d, all_objects o
  where d.object_id = o.object_id (+);
REM INSERTING into USER_DEV.DEPTREE
SET DEFINE OFF;
Insert into USER_DEV.DEPTREE (NESTED_LEVEL,TYPE,SCHEMA,NAME,SEQ#) values ('0',null,null,null,'0');
Insert into USER_DEV.DEPTREE (NESTED_LEVEL,TYPE,SCHEMA,NAME,SEQ#) values ('1',null,null,null,'18');
Insert into USER_DEV.DEPTREE (NESTED_LEVEL,TYPE,SCHEMA,NAME,SEQ#) values ('2','PROCEDURE','USER_APP','APL_INCLUIR_CLIENTE','19');
