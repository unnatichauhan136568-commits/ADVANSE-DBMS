DECLARE
    feet   NUMBER := &feet;
    cm     NUMBER;
    inch   NUMBER;
    meter  NUMBER;
BEGIN
    
    inch  := feet * 12;
    cm    := feet * 30.48;
    meter := feet * 0.3048;

    
    DBMS_OUTPUT.PUT_LINE('Measurement in Feet   : ' || feet);
    DBMS_OUTPUT.PUT_LINE('Measurement in Inches : ' || inch);
    DBMS_OUTPUT.PUT_LINE('Measurement in CM     : ' || cm);
    DBMS_OUTPUT.PUT_LINE('Measurement in Meter  : ' || meter);
END;
/