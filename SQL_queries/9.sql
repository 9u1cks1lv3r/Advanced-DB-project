--Which function helps us to check existing seria in list with attributes such as user's id and series' id?
create or replace function seria_in_list(
        p_user_id in users.user_id%type,
        p_series_id in series.series_id%type)
    return number
as
    v_series_id series.series_id%type;
    cursor cur_list is
        select series_id from user_list where series_id = p_series_id and user_id = p_user_id;
begin
    open cur_list;
    fetch cur_list into v_series_id;
    if cur_list%notfound then
        close cur_list;
        return 0;
    end if;
    close cur_list;
    return 1;
end;
