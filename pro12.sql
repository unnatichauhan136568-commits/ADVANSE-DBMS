create or replace procedure proins(sid in
number,sname in char,subtype in char)
Is
begin
insert into subject values(sid,sname,subtype);
commit;
end proins;
/
