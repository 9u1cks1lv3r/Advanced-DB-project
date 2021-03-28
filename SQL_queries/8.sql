--Which trigger should we use to check existing user's username or email?
CREATE OR REPLACE TRIGGER user_check
BEFORE INSERT ON users
FOR EACH ROW
DECLARE
    TYPE Checker IS TABLE OF NUMBER;
    chkr Checker := Checker(0, 0);
BEGIN
    SELECT COUNT(*) INTO chkr(2) FROM users WHERE username = :NEW.username;
    SELECT COUNT(*) INTO chkr(1) FROM users WHERE email = :NEW.email;
    IF (chkr(2) >= 1) THEN
        IF chkr(1) >= 1 THEN
            raise_application_error(-20001,'User with this username and email is already created!');
        ELSE
            raise_application_error(-20001,'User with this username is already created!');
        END IF;
    ELSE
        IF chkr(1) >= 1 THEN
            raise_application_error(-20001,'User with this email is already created!');
        END IF;      
    END IF;
END;
