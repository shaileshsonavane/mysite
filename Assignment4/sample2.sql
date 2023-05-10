
drop PROCEDURE if EXISTS proc1;

delimiter $
create PROCEDURE proc1(x int)
begin
declare _empno, _sal, _deptno int;
declare _ename, _job varchar(40);
declare _hiredate date;
DECLARE c1 CURSOR for SELECT empno, ename, hiredate, sal,job, deptno form emp WHERE deptno=x;
declare exit handler for 1329 select "No more recprds to fetch";
open c1;
lbl:LOOP;
fetch c1 INTO _empno, _ename, _hiredate, _sal, _job, _deptno;
          SELECT _empno, _ename, _hiredate, _sal, _job, _deptno;
	 end loop lbl;;
	close c1 ;
end $
delimiter ;