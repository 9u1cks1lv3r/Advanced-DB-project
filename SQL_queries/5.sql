--How Users can registrate to the site?
create or replace procedure insert_user(
        p_username users.username%type,
        p_password users.password%type,
        p_email users.email%type)
as
begin
    insert into users(username, password, email) values(p_username, p_password, p_email);
    commit;
end;
