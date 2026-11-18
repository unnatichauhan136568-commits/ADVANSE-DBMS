CREATE OR REPLACE PROCEDURE product_update ( p_id    IN NUMBER,p_name  IN VARCHAR2,p_price IN NUMBER) IS
BEGIN
    
    
    DBMS_OUTPUT.PUT_LINE('ID ' || p_id || ': ' || p_name || ' updated with price ' || p_price);
END product_update;
/