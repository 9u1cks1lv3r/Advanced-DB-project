--How to check user's id is null value or not for Users table?
CREATE SEQUENCE users_seq START WITH 1;

create or replace trigger users_id_inc 
    before insert on users
    for each row
begin
    if :new.user_id is null then
        select users_seq.nextval into :new.user_ID from dual;
    end if;
end;
