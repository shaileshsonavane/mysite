
drop PROCEDURE if exists pro1;
delimiter $
CREATE procedure pro1()
b1:BEGIN
	DECLARE _deptno int;
	DECLARE _dname, _loc varchar(30);
	declare c1 cursor for select deptno, dname, loc from dept;
	declare exit handler for 1329 select "Done";
	open c1;
		lbl:LOOP
			fetch c1 into _deptno, _dname, _loc;
			select _deptno, _dname, _loc;
			b2:BEGIN
				 select empno, ename, job, sal, deptno from emp where deptno = _deptno;
			end b2;
		end loop lbl;
	close c1;
end b1$
delimiter ;
