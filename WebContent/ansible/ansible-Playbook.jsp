<h3>Ansible file Extension file_name then dot YML (demo.yml) or
file_name then dot YAML (demo.yaml)</h3>


<h3><strong>Dry Run (Only yml file order)</strong></h3>
<p>ansible-playbook myplaybook.yml --syntax-chec</p>

<h3><strong>Dry Run (file order as well as YAML code )</strong></h3>
<p>ansible-playbook playbook_name --check</p>
<p>ansible-playbook playbook_name -C </p>

<h3>if you want to run playbook one by one task</h3>
<p>ansible-playbook playbook_name --step</p>

<h3>How to push playbook</h3>
<p>ansible-playbook playbook_name</p>

<h1>basically we have three method to write tasks in playbook</h1>
<ul>
	<li>Single line formate</li>
	<li>Multiline formate</li>
	<li>Dictionary formate</li>
</ul>

<h1>Ansible Variable</h1>
<h2>in three place define a variable</h2>
<ul>
	<li>1 : Command Level Variable </li>
	<li>2 : Playbook Level Variable </li>
	<li>3 : Inventory Level Variable </li>
</ul>

<p>ansible-playbook playbook_Variable_Command_Line3.yml -e my_user="ANNU_25" -e my_comment="IT ADMIN ASD"</p>

<h3>vim /home/employee/hosts</h3>
<pre>
[web]#space not allowed in inventory level variables
192.168.198.132 ansible_ssh_root=root ansible_ssh_pass=redhat my_user= "ashu3535" my_comment= "TIDDD"

[web]
	192.168.25.26 ansible_ssh_root=root ansible_ssh_pass=redhat web_root=/var/www/html1
[dev:vars]
	web_root=/var/www/html2
	#ansible_ssh_user=employee
	#ansible_ssh_pass=redhat	
</pre>

<h1>vars_files,include_vars</h1>

<pre>
	# mkdir sourcecode-3.8.war 
- name: ansible variable
  hosts: all
  vars_files: #top of tasks
      - /root/playbook_custom_variable.yml       
  tasks:
      - name: create document root
        file: 
            path: "{{ web_root }}" 
            state: directory
      - name: print variable value
        debug:
            var: web_root
      - name: deploy "{{ app }}" into "{{ web_root }}"
        copy:
            src: "{{ app }}"
            dest: "{{ web_root }}" 
</pre>
<pre>
	# mkdir sourcecode-3.8.war 
- name: ansible variable
  hosts: all
  tasks:
        # alwasy come after tasks
      - include_vars: /root/playbook_custom_variable.yml      
      - name: create document root
        file: 
            path: "{{ web_root }}" 
            state: directory
      - name: print variable value
        debug:
            var: web_root,app
      - name: deploy "{{ app }}" into "{{ web_root }}"
        copy:
            src: "{{ app }}"
            dest: "{{ web_root }}"               	
</pre>	

<h3>use case fact gathering </h2>
<p>setup module</p>
<p>ansible web -m setup</p>
<p>ansible web -m setup -a 'filter=ansible_etho0*'</p>	

<pre>
# plays will gather facts by default, which contain information about
# the remote system.
#
# smart - gather by default, but don't regather if already gathered
# implicit - gather by default, turn off with gather_facts: False
# explicit - do not gather by default, must say gather_facts: True
#gathering = implicit	
</pre>

<h2>loop</h2>
<h2>condition</h2>
ansible web -m setup -a 'filter=ansible_dis*' 
ansible web -m setup -a 'filter=ansible_mem*'
<h2>notify and handlers</h2>
<h2>ansible jinja2 template file use case</h2>
<h2>delegate </h2>