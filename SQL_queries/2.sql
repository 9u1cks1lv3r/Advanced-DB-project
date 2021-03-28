--How can get information about genre of comics?
create or replace function get_genre_name(
    p_genre_id number) 
    return varchar2 is
        cursor get_name is
            select g_name from genres where genres_id = p_genre_id;
        v_genre  genres.genres_id%type;
begin
    open get_name;
    fetch get_name into v_genre;
    close get_name;
    return v_genre;
end;
