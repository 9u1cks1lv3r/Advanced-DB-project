--How update should works with attributes such as comics id, user id and series id?
create or replace procedure update_user_list(
        p_comics_id comics.comics_id%type,
        p_user_id users.user_id%type,
        p_series_id series.series_id%type)
as
begin
    update user_list set last_chapter = p_comics_id where user_id = p_user_id and series_id = p_series_id;
end;
