--How to check comics' id is null value or not for Comics table?
CREATE SEQUENCE comics_seq START WITH 1;

create or replace trigger comics_id_inc 
    before insert on comics
    for each row
begin
    if :new.comics_id is null then
        select comics_seq.nextval into :new.comics_id from dual;
    end if;
end;
