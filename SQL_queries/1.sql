--Which procedure can add different kind of genres?
create or replace procedure add_genres(
    p_genre_name in varchar2, 
    p_series_name in varchar2) is
        cursor get_genre_id is
            select genres_id from genres where g_name = p_genre_name;
        cursor get_series_id is 
            select series_id from series where s_name = p_series_name;
        v_genre_id genres.genres_id%type;
        v_series_id series.series_id%type;
begin
    open get_genre_id;
    fetch get_genre_id into v_genre_id;
    if get_genre_id%notfound then
        insert into genres(g_name) values(p_genre_name);
        commit;
    end if;
    close get_genre_id;
    open get_genre_id;
    fetch get_genre_id into v_genre_id;
    close get_genre_id;
    open get_series_id;
    fetch get_series_id into v_series_id;
    close get_series_id;
    insert into seria_genres values(v_series_id,v_genre_id);
    commit;
end;
