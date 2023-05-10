drop procedure if exists pro1;
delimiter $
create procedure pro1(in _deptno int)
begin
select empno, ename, job, hiredate, sal, deptno from emp where deptno = _deptno;
end $
delimiter ;