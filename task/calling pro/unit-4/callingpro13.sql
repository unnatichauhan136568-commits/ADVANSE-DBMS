declare
sno number:=&sno;

snm char(20):='&snm';
xtype char(50):='&xype';
begin
proins(sno,snm,xtype);
dbms_output.put_line('record stored');
end;
/