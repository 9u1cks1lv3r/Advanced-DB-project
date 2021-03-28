--What function should we do to get user id using user's email and user's password?
create or replace function get_user_id(
        p_email users.email%type,
        p_password users.password%type)
    return number
as 
    cursor c_user is
        select * from users where email = p_email and password = p_password;
    v_user users%rowtype;
begin
    open c_user;
    fetch c_user into v_user;
    if c_user%notfound then
        return 0;
    end if;
    close c_user;
    return v_user.user_id;
end;
