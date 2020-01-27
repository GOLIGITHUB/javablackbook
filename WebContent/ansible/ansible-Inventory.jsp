<h3>How to create static inventory ?</h3>
	<p>ansible no need to login as root</p>
	<p>when we need to log in as root when push task as root level </p>
	<p>inventory  file name anything in ansible </p>
	<p>in an inventory, file writes IP address or hostname.if you have  multiple IP addresses </p>
	<pre>
		[webservver]
		192.168.198.130
		192.168.198.131
		www.javablackbook.com
		[devserver]
		192.168.10.[1:10]
	</pre>	
	<p><strong>if hostname in order either prefix or suffix then</strong></p>
	<pre>
		[db]
		jbb[20:30].example.com
		[dev]
		192.168.11.[1:254]
		[production:children]
		db
		dev

		machine level credentials
		inventory label variable
	</pre>
	<p>ansible all --list-hosts</p>
	<p>ansible webserver --list-hosts</p>

	<p><strong>default inventory file localtion</strong></p>
	<p>vim /etc/ansible/hosts</p>
	<p><strong>for custome inventory</strong></p>
	<p>ansible webserver --list-hosts -i inventory-file-name</p>
	<p>ansible webserver:dbserver --list-hosts -i inventory file name</p>
	<p>ansible production --list-hosts -i inventory file name</p>

<h3>How to set custome inventory as default inventory</h3>
	<p><strong>ansible --version</strong>
	<p><strong>Where is ansible cfg file</strong></p>
	<p><strong>/etc/ansible/ansible.cfg</strong>
	<p><strong>subl /etc/ansible/ansible.cfg</strong></p>	


<h3>How to setup custom ansible cfg evn path ?</h3>
	<p>cp -rvf /etc/ansible/ansible.cfg  /home/employee/.ansible.cfg</p>
	<p>ansible --version</p>
	<p>vim .ansible.cfg</p>
		inventory=/home/xyz/abc
		inventory=/home/xyz/demo
	<p>ansible pro --list-hosts -v</p>
	<p>vim demo</p>
		[pro]
			192.168.10.11
			192.168.10.23
	<p>ansible webserver --list-hosts -v</p>	

	<p><strong>if you have multiple inventory then copy all multiple 
	file into a single folder and set path to the folder</strong></p>
	<p>mkdir myinventory</p>
		abc demo
	<p>mkdir mypro</p>	
	<p>mv .ansible.cfg mypro</p>
	<p>ansible --version</p>
	<p>go to default localtion</p>

	<p><strong>Custome config file</strong></p>
	<p>vim /home/employee/.ansible/ansible.cfg</p>
	ansible webserver --list-hosts -v

	<p>mkdir myproject</p>
	<p>cp -rvf /etc/ansible/ansible.cfg   myproject</p>
	<p>ansible --version</p>
	
	<pre>
	export ANSIBLE_CONFIG=/home/employee/myproject/.ansible.cfg 
	unset ANSIBLE_CONFIG
	cd /home/myproject
	ansible --version

	3->
		unset ANSIBLE_CONFIG
		1-pwd
		2-export
		3- ~.anbile
		4-/etc/ansible/ansible.cfg
	</pre>	
</pre>