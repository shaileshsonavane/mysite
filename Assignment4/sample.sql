drop PROCEDURE if exists proc1; 
delimiter $
create PROCEDURE proc1 (_deptno int)
BEGIN
	declare flag bool DEFAULT false;
	select distinct true into flag from emp where deptno=_deptno;
	if flag THEN
		select empno, ename,sal,job,hiredate,deptno from emp where deptno=_deptno;
	ELSE
		select "employee not found";
	end if;
end $
delimiter ;
	