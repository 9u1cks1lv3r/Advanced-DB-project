--What will we realize to add user_id and series_id to list?
create or replace procedure add_to_list(
        p_user_id in users.user_id%type,
        p_series_id in series.series_id%type)
as
begin
    INSERT INTO USER_LIST (user_id, series_id) VALUES(p_user_Id, p_series_id);
    commit;
end;
