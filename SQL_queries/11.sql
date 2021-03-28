--How to check last_character is null value or not for User_List table?
create or replace trigger user_list_trigger
before insert on user_list
for each row
begin
    if :new.last_chapter is null then
        select min(comics_id) into :new.last_chapter from comics where series_id = :new.series_id;
    end if;
end;
