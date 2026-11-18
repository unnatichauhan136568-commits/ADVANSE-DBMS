CREATE OR REPLACE FUNCTION fin_s (
    p_principal IN NUMBER,
    p_rate      IN NUMBER,
    p_time      IN NUMBER
) RETURN NUMBER IS
    v_si NUMBER;
BEGIN
    v_si := (p_principal * p_rate * p_time) / 100;
    RETURN v_si;
END fin_s;
/