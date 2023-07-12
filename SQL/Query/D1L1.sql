use my_testdb;

select * from emp;

desc emp;

select name from emp;

select name, 'is good~' from emp;

select concat(name, ' is good~')
from emp;

select name, birthday from emp;

select name, pay, pay*1.1 from emp;

select empno as "사원번호", name "사원명", birthday "생일"
from emp;

select deptno from emp;

select distinct deptno from emp;

select name, deptno, hobby
from emp
where deptno = 1011;

select name, hobby
from emp
where hobby = 'Climb';

select deptno, dname, build
from department
where deptno >= 100 and deptno <= 200;

select profno, name, deptno
from professor
where deptno in(101, 102, 103);

select name, pay
from emp
where name like 'K%';

select deptno, name, bonus
from emp2
where deptno in(1001, 1002, 1003, 1004)
and bonus is null;

select deptno, name, bonus
from emp2
where deptno = 1001
and bonus = 250;

select deptno, name, bonus
from emp2
where (deptno = 1000
or deptno = 1001)
and bonus >= 250;

select deptno, name, birthday
from emp
where deptno in(1000, 1001, 1002, 1003)
order by birthday;

select deptno, name, birthday
from emp
where deptno in(1000, 1001, 1002, 1003)
order by birthday desc;

select name, lower(name) "소문자", upper(name) "대문자"
from student
where deptno1 = 101;

select name, left(name, 1) "LEFT", right(name, 1) "RIGHT"
from student
where deptno1 = 101;

select left('홍길동', 1) "left", mid('올길동', 2, 1) 'mid',
		right('홍길동', 1) "right"
from dual;

select length('서진수') "바이트수", char_length('서진수') "글자수"
from dual;

select
substr('MySQL', 3) "결과1",
substr('MySQL', 3, 2) "결과2",
substring('MySQL', 3) "결과3"
from dual;

select
substring_index('blog.naver.com', '.', 1) "결과1",
substring_index('blog.naver.com', '.', 2) "결과2",
substring_index('blog.naver.com', '.', 3) "결과3",
substring_index('blog.naver.com', '.', -1) "결과4",
substring_index('blog.naver.com', '.', -2) "결과5"
from dual;

select
substring_index('blog.naver.com', '.', 1) "첫번째",
substring_index(substring_index('blog.naver.com', '.', 2), '.', -1) "가운데",
substring_index('blog.naver.com', '.', -1) "마지막"
from dual;

select
'박민규' as "name", instr("박민규", '민') "instr";
# 결과 : 2

select
name, locate('S', name) "S_LOCATE"
from student
where deptno1 = 201;

select name, hobby,
lpad(hobby, 15, '*') "LPAD",
rpad(hobby, 15, '*') "RPAD"
from emp
where deptno in(1001, 1002, 1003);

select rpad('홍길동', 10, '4567890') "RPAD";
# 홍길동4567890

# trim, ltrim, rtrim, replace --> 공백제거에 사용 가능한 함수들
