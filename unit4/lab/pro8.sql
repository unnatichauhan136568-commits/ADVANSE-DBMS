CREATE OR REPLACE FUNCTION FUN_BALANCE ( p_account_id IN NUMBER) RETURN NUMBER IS
    v_balance NUMBER(15, 2);
BEGIN
    SELECT balance 
    INTO v_balance 
    FROM account 
    WHERE account_id = p_account_id;

    RETURN v_balance;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;
/