CREATE OR REPLACE PROCEDURE multiply_three_numbers (p_num1 IN NUMBER,p_num2 IN NUMBER,p_num3 IN NUMBER) Is
    v_result NUMBER;
BEGIN
    v_result := p_num1 * p_num2 * p_num3;
    DBMS_OUTPUT.PUT_LINE('Product: ' || v_result);
END multiply_three_numbers;
/