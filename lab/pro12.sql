create or replace function fun_cube(x in number)
RETURN number
IS

c number;

begin

c:=x * x * x;
return c;
end fun_cube;
/