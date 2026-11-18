SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS SELECT srno, name, sales1, sales2 FROM sales;
   
    v_srno    salesdata.srno%TYPE;
    v_name   salesdata.name%TYPE;
    v_sales1 salesdata.sales1%TYPE;
    v_sales2 salesdata.sales2%TYPE;
    v_total  NUMBER;
    v_comm   NUMBER;

BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO v_srno, v_name, v_sales1, v_sales2;
        EXIT WHEN c1%NOTFOUND;

        v_total := v_sales1 + v_sales2;

        IF v_total < 15000 THEN
            v_comm := v_total * 0.05;
        ELSIF v_total >= 15000 AND v_total < 30000 THEN
            v_comm := v_total * 0.10;
        ELSE
            v_comm := v_total * 0.15;
        END IF;

        DBMS_OUTPUT.PUT_LINE('sno: ' || v_srno);
        DBMS_OUTPUT.PUT_LINE('name: ' || v_name);
        DBMS_OUTPUT.PUT_LINE('sales1: ' || v_sales1);
        DBMS_OUTPUT.PUT_LINE('sales2: ' || v_sales2);
        DBMS_OUTPUT.PUT_LINE('total: ' || v_total);
        DBMS_OUTPUT.PUT_LINE('commission: ' || v_comm);
        DBMS_OUTPUT.PUT_LINE('--------------------------');

    END LOOP;

    CLOSE c1;
END;
/
