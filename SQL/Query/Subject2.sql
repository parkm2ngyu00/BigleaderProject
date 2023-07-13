use my_testdb;

select * from emp;

# 150pg 1번
select deptno "부서번호", format(sum(pay), 0) "부서별 급여합계"
from emp
where deptno in(1001, 1002, 1003, 1004)
group by DEPTNO
order by sum(deptno);