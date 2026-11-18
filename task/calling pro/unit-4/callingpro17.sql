--calling program
set serveroutput on
declare
p1 number:=&p1;
xpnm char(15):='&xpnm';
xprice number:=&xprice;
begin
product_insert(p1,xpnm,xprice);
end;
/