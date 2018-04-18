--------------------------------------------------------
--  Arquivo criado - Quarta-feira-Abril-18-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure DEPTREE_FILL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "USER_DEV"."DEPTREE_FILL" (type char, schema char, name char) is
  obj_id number;
begin
  delete from deptree_temptab;
  commit;
  select object_id into obj_id from all_objects
    where owner        = upper(deptree_fill.schema)
    and   object_name  = upper(deptree_fill.name)
    and   object_type  = upper(deptree_fill.type);
  insert into deptree_temptab
    values(obj_id, 0, 0, 0);
  insert into deptree_temptab
    select object_id, referenced_object_id,
        level, deptree_seq.nextval
      from public_dependency
      connect by prior object_id = referenced_object_id
      start with referenced_object_id = deptree_fill.obj_id;
exception
  when no_data_found then
    raise_application_error(-20000, 'ORU-10013: ' ||
      type || ' ' || schema || '.' || name || ' was not found.');
end;

/
