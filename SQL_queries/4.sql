--Which procedure or function helps us with removing certain object in list?
create or replace procedure delete_from_list(
        p_user_id in users.user_id%type,
        p_series_id in series.series_id%type)
as
begin
    delete from user_list where user_id = p_user_id and series_id = p_series_id;
    commit;
end;

