DECLARE
    v_numerator   NUMBER := 100;
    v_denominator NUMBER := 0;
    v_result      NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Attempting to divide ' || v_numerator || ' by ' || v_denominator || '...');
    
    
    v_result := v_numerator / v_denominator;
    
   
    DBMS_OUTPUT.PUT_LINE('The result is: ' || v_result);

EXCEPTION
    
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed.');
        v_result := NULL; -- Handle gracefully by assigning a default or null value
        
   
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END;
/