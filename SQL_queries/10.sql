--How to check publisher's id is null value or not for Publisher table?
create or replace trigger publisher_id_inc 
    before insert on publisher
    for each row
begin
    if :new.publisher_id is null then
        select publisher_seq.nextval into :new.publisher_id from dual;
    end if;
end;
