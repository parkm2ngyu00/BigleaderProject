# 다양한 sub query의 이해와 활용
# pg.226

use my_testdb;

select empno, ename, sal
from emp3
where sal >
(select sal from emp3 where ename = 'ALLEN');
