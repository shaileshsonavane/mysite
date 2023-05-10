drop trigger if exists tr2;
delimiter $
create trigger tr2 after insert on dept for each row
begin
insert into d values (new.deptno, new.dname, new.loc, new.pwd, new.startedon) ;
end $
delimiter ;