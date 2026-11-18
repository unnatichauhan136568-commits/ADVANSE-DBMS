CREATE OR REPLACE TRIGGER check_salary
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF :NEW.SAL > 50000 THEN
        RAISE_APPLICATION_ERROR(-20001,
        'Salary cannot be greater than Rs. 50000');
    END IF;
END;
/