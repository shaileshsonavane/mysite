drop PROCEDURE if EXISTS pro1;
delimiter $
CREATE procedure pro1()
b1 : BEGIN
declare _deptno int;
DECLARE _dname, _loc varchar(40);
DECLARE c1 CURSOR for select deptno, dname, loc from dept;
declare exit handler for 1329 select "done";
open c1;
lbl : LOOP
      fetch c1 into _deptno, _dname, _loc;
	  b2 : BEGIN
	  declare _empno, _sal, _deptno int;
	  declare _ename, _job varchar(40);
	  declare c2 cursor for SELECT empno, ename, job, sal, deptno from emp where deptno = _deptno;
	  declare exit handler for 1329 SELECT "done";
            open c2;
			lbl2 : LOOP
			fetch c2 into _empno, _ename, _job, _sal, _deptno;
			select _empno, _ename, _job, _sal, _deptno;
			 end loop lbl2;
			CLOSE c2;
		end b2;
	end loop lbl;
close c1;
end b1 $

delimiter ;













































