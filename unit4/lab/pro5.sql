-- 1. Drop existing table to remove old column definitions
DROP TABLE account CASCADE CONSTRAINTS;

-- 2. Create Table with correct columns
CREATE TABLE account (
    acno NUMBER PRIMARY KEY,
    cname VARCHAR2(50),
    bname VARCHAR2(50),
    balance NUMBER
);

-- 3. Insert sample record
INSERT INTO account VALUES (101, 'Alex', 'SBI', 5000);
COMMIT;

-- 4. Create Function
CREATE OR REPLACE FUNCTION get_balance(p_acno NUMBER) RETURN NUMBER IS
    v_bal NUMBER;
BEGIN
    SELECT balance INTO v_bal FROM account WHERE acno = p_acno;
    RETURN v_bal;
END;
/

SHOW ERRORS;

-- 5. Test Function
SET SERVEROUTPUT ON;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Balance: ' || get_balance(101));
END;
/