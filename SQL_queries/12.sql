--How to check genre's id is null value or not for Genres table?
create or replace trigger genres_id_inc 
    before insert on genres
    for each row
begin
    if :new.GENRES_ID is null then
        select genres_seq.nextval into :new.GENRES_ID from dual;
    end if;
end;
