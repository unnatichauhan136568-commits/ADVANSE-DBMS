CREATE OR REPLACE PROCEDURE product_del (
    p_name IN VARCHAR2
) IS
BEGIN
   
    DBMS_OUTPUT.PUT_LINE('Product ' || TRIM(p_name) || ' processing completed.');
END product_del;
/