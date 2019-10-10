 <div class="container" ><br><br>
 <h1 align="center" >Conditional Statement In Oracle Database</h1>
  <hr>
  
 
<h3 align="left">Simple IF Statement.<span class = "label label-default"></span></h3>
<pre>set serveroutput on
declare 
v_emp_id number(4);
v_salary number;
v_comm number;
begin
select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='&v_emp_id';
if v_comm is NULL then
	dbms_output.put_line('Commission is null');
end if;
end;
/</pre>
<p>Save it if.sql and execute it.</p>
<pre>SQL> @D:\tr\if.sql;
Enter value for v_emp_id: 4
old   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='&v_emp_id';
new   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='4';
Commission is null

PL/SQL procedure successfully completed.</pre>

<h3 align="left">IF statement with ELSE .<span class = "label label-default"></span></h3>
<pre>set serveroutput on
declare 
v_emp_id number(4);
v_salary number;
v_comm number;
begin
select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='&v_emp_id';
if v_comm is NULL then
	dbms_output.put_line('Commission is null');
else
	dbms_output.put_line('Commission is '||' '||v_comm);
end if;
end;
/</pre>
<p>Save it if_else.sql and execute it.</p>
<pre>SQL> @D:\tr\if.sql;
Enter value for v_emp_id: 5
old   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='&v_emp_id';
new   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='5';
Commission is  624

PL/SQL procedure successfully completed.

SQL> @D:\tr\if_else.sql;
Enter value for v_emp_id: 4
old   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='&v_emp_id';
new   6: select id,salary,comm into v_emp_id,v_salary,v_comm from emp where id='4';
Commission is null

PL/SQL procedure successfully completed.</pre>

<h3 align="left">Simple Loop<span class = "label label-default"></span></h3>
<pre>set serveroutput on
declare 
i number;
begin
i:=0;
loop
	i:=i+1;
	exit when i>5;
	dbms_output.put_line(i);
end loop;
end;
/</pre>
<p>Svae it loop.sql and execute</p>
<pre>SQL> @D:\tr\loop.sql;
1
2
3
4
5

PL/SQL procedure successfully completed.</pre>

<h3 align="left">While Loop<span class = "label label-default"></span></h3>
<pre>set serveroutput on
declare 
i number;
begin
i:=1;
while i<=5 loop
dbms_output.put_line(i);
i:=i+1;
end loop;
end;
/</pre>
<p>Svae it while_loop.sql and execute</p>
<pre>SQL> @D:\tr\while_loop.sql;
1
2
3
4
5

PL/SQL procedure successfully completed.</pre>

<h3 align="left">For Loop<span class = "label label-default"></span></h3>
<pre>set serveroutput on
begin
for i in 1..4 loop
dbms_output.put_line(i);
end loop;
end;
/</pre>
<p>Svae it for_loop.sql and execute</p>
<pre>SQL> @D:\tr\for_loop.sql;
1
2
3
4

PL/SQL procedure successfully completed.
</pre>

<h3 align="left">For Reverse Loop<span class = "label label-default"></span></h3>
<pre>set serveroutput on
begin
for i in reverse 1..4 loop
dbms_output.put_line(i);
end loop;
end;
/</pre>
<p>Svae it for_reverse_loop.sql and execute</p>
<pre>SQL> @D:\tr\for_reverse_loop.sql;
4
3
2
1

PL/SQL procedure successfully completed.
</pre>






 </div>
