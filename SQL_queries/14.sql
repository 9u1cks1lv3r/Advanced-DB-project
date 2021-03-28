--How to check series' id is null value or not for Series table?
CREATE SEQUENCE series_seq START WITH 1;

create or replace trigger series_id_inc 
    before insert on series
    for each row
begin
    if :new.series_id is null then
        select series_seq.nextval into :new.series_id from dual;
    end if;
end;
