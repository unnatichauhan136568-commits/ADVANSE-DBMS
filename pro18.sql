CREATE OR REPLACE PROCEDURE product_update ( p_name IN VARCHAR2, p_price IN NUMBER)
 IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Product ' || p_name || ' updated with value: ' || p_price);
END product_update;
/