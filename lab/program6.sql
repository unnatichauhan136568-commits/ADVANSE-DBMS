SET SERVEROUTPUT ON;

DECLARE
    n NUMBER;
    i NUMBER;
BEGIN
    n := &n;

    
    DBMS_OUTPUT.PUT_LINE('Using LOOP:');
    i := 1;
    LOOP
        EXIT WHEN i > n;
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;

    
    DBMS_OUTPUT.PUT_LINE('Using FOR LOOP:');
    FOR i IN 1..n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;

    
    DBMS_OUTPUT.PUT_LINE('Using WHILE LOOP:');
    i := 1;
    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/