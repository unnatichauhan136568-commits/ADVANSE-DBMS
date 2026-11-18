SET SERVEROUTPUT ON;

DECLARE
   
   CURSOR c_booking IS
      SELECT booking_id, customer_name, destination, booking_date, amount
      FROM booking;
      
   
   v_booking c_booking%ROWTYPE;
BEGIN
   
   OPEN c_booking;
   
   DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');
   DBMS_OUTPUT.PUT_LINE('ID  | CUSTOMER NAME   | DESTINATION | DATE      | AMOUNT');
   DBMS_OUTPUT.PUT_LINE('----------------------------------------------------');

   
   LOOP
      FETCH c_booking INTO v_booking;
      EXIT WHEN c_booking%NOTFOUND;
      
      DBMS_OUTPUT.PUT_LINE(
         RPAD(v_booking.booking_id, 4) || ' | ' ||
         RPAD(v_booking.customer_name, 15) || ' | ' ||
         RPAD(v_booking.destination, 11) || ' | ' ||
         TO_CHAR(v_booking.booking_date, 'DD-MON-YY') || ' | ' ||
         v_booking.amount
      );
   END LOOP;

   
   CLOSE c_booking;
END;
/