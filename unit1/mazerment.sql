SET SERVEROUTPUT ON;

DECLARE
    num NUMBER := &num;
    sq  NUMBER;
    cube NUMBER;
BEGIN
    sq := num * num;
    cube := num * num * num;

    DBMS_OUTPUT.PUT_LINE('Given Number : ' || num);
    DBMS_OUTPUT.PUT_LINE('Square       : ' || sq);
    DBMS_OUTPUT.PUT_LINE('Cube         : ' || cube);
END;
/