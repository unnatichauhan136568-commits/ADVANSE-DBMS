CREATE OR REPLACE PROCEDURE insert_choc_shop (
    p_srno  IN NUMBER,
    p_name  IN VARCHAR2,
    p_price IN NUMBER
) IS
BEGIN
    INSERT INTO choc_shop (srno, name, price)
    VALUES (p_srno, p_name, p_price);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Inserted record for: ' || p_name);
END insert_choc_shop;
/


SET SERVEROUTPUT ON;

BEGIN
    insert_choc_shop(1, 'Dailry milk', 120);
    insert_choc_shop(2, 'ferror', 500);
END;
/