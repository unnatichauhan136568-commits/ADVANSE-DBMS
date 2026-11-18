--progrmm details
setserveroutput on
declare

name char(16):='&name';
address1 varchar(20):='&address1';
address2 varchar(2):='&address2';
city char(10):='&city';
pincode number(10):='&number';
state char(10):='&state';

begin

dbms_output.put_line('name:'||name);
dbms_output.put_line('address1:'||address1);
dbms_output.put_line('address2:'||address2);
dbms_output.put_line('city:'||city);
dbms_output.put_line('pincode:'||pincode);
dbms_output.put_line('state:'||state);

end;
/




