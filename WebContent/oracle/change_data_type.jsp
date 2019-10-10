
 <div class="container" ><br><br>
 <h1 align="center" >Change Data Type Of Column</h1>
  <hr>
  
 
<h3 align="left">How to change data type of column.<span class = "label label-default"></span></h3>
<p>If we want to chnage data type of column. we will use MODIFY key word.</p>
<pre>SQL> desc emp_new;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- -----------------
 ID                                                                         NUMBER(10)
 NAME                                                                       VARCHAR2(20)
 SALARY                                                                     NUMBER(10)
 DEPTNO                                                                     NUMBER(10)
 COMM                                                                       NUMBER(10)
 JOB                                                                        VARCHAR2(20)
 MB_NO                                                                      NUMBER(10)

SQL> alter table emp_new modify mb_no varchar2(20);

Table altered.

SQL> desc emp_new;
 Name                                                              Null?    Type
 ----------------------------------------------------------------- -------- -----------------
 ID                                                                         NUMBER(10)
 NAME                                                                       VARCHAR2(20)
 SALARY                                                                     NUMBER(10)
 DEPTNO                                                                     NUMBER(10)
 COMM                                                                       NUMBER(10)
 JOB                                                                        VARCHAR2(20)
 MB_NO                                                                      VARCHAR2(20)</pre>

 </div>
