--create procedure to add product

CREATE OR REPLACE PROCEDURE
product_insert(pid in number,pnm in char,prc in number)
IS
BEGIN
insert into product values(pid,pnm,prc);
commit;
end product_insert;
/