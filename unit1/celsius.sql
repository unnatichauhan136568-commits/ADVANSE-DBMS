DECLARE
    celsius    NUMBER := &celsius;
    fahrenheit NUMBER;
BEGIN
    
    fahrenheit := (celsius * 9 / 5) + 32;

    
    DBMS_OUTPUT.PUT_LINE('Temperature in Celsius    : ' || celsius || ' °C');
    DBMS_OUTPUT.PUT_LINE('Temperature in Fahrenheit : ' || fahrenheit || ' °F');
END;
/