CREATE OR REPLACE PROCEDURE check_voting_eligibility (
    p_age IN NUMBER
) IS
BEGIN
    IF p_age >= 18 THEN
        DBMS_OUTPUT.PUT_LINE('Age: ' || p_age || ' - Eligible for vote');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Age: ' || p_age || ' - Not eligible for vote');
    END IF;
END check_voting_eligibility;
/


SET SERVEROUTPUT ON;

BEGIN
    check_voting_eligibility(20);
    check_voting_eligibility(15);
END;
/