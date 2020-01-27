<h3>How to push tasks in ansible by using ad-hoc command ?</h3>
<p>Remote machine have no python 
	or What module name  for uptime
then use raw module</p>  

<strong>1nd(Password Base authentication)</strong>
<h3>ansible target(inventory_group) -m module_name	-a 'key=value' -option value</h3>
<p><strong>Note:</strong> web group has multiple hosts then ssh not possible.then close the ssh fingerprint </p>
<pre>
vim .ansible.cfg
	#uncomment
	host_key_checking = False
</pre>

<p>ansible web -m raw -a "uptime"</p>	
<p>ansible all -m raw -a 'id'</p>
<p>ansible java -m raw -a "uptime" -u employee -k (User Name then password)</p>
<p>ansible java -m raw -a "uptime" -u root -k </p>
<p>ansible all -m ping -u employee -k </p>
<p>ansible java -m raw -a 'mkdir /data' -u employee -k</p>
<p><strong>Note:</strong>if you login .then your session validate 60 second</p>

<pre>
vim .ansible
	#ssh_args = -C -o ControlMaster=auto -o ControlPersist=60s
</pre>

<strong>2nd(Inventory)</strong>

<h3>Using inventory file </h3>
<h4>vim /home/employee/hosts</h4>
<pre>
	[pro]
	192.168.25.26 ansible_ssh_root=root ansible_ssh_pass=redhat
</pre>
<h3>Using inventory file [that is call inventory level variable]</h3>
<h4>vim /home/employee/hosts</h4>
<pre>
	[dev:vars]
	ansible_ssh_user=employee
	ansible_ssh_pass=redhat
</pre>


<strong>3nd(Key Base Authentication)</strong>
<p>key generator on server-side and public key send using an ssh-copy-id command to the managed node  </p>
<pre>
ssh-keygen
ssh-copy-id 198.196.123.23
ssh-copy-id root@198.196.123.23
ssh-copy-id employee@198.196.123.23
ssh-copy-id employee@hostname
ssh-copy-id -i root@node1 or ssh-copy-id root@node1
ssh-copy-id -i  root@node1 or ssh-copy-id  root@node1
</pre>

<pre>
(-b) become a sudo power
ansible web -m raw -a 'mkdir /test' -u employee 
ansible web -m raw -a 'mkdir /test' -u employee -b --become-method sudo
ansible web -m raw -a 'mkdir /test' -u employee -b --become-method sudo --become-user root
</pre>

<pre>
vim .ansible.cfg
	remote_user = employee
</pre>
<h3>Normal user automatic sudo power </h3>
<h4>vim .ansible.cfg</h4>
<pre>
	#uncomment
	privilege_escalation]
	become=True
	become_method=sudo
	#become_user=root
	#become_ask_pass=False
</pre>

<h3>normal user switch hoke root banjaye</h3>
<h4>vim .ansible.cfg</h4>
<pre>
	#uncomment
	privilege_escalation]
	become=True
	become_method=sudo
	become_user=root
	#become_ask_pass=False	
</pre>

======================================================
example core module of ansible 
======================================================

<h4>1-copy module</h4>
ansible all -m copy -a 'src=run.sh dest=/root/run.sh mode=0755 owner=root group=root'
ansible-doc copy	
ansible all -m copy -a 'src=run.sh dest=/root/run.sh'
ansible all -m copy -a 'src=run.sh dest=/root/run.sh backup=yes'
ansible all -m copy -a 'content="Hello Python" dest=/root/run.sh'
ansible all -m copy -a 'src=/root/xyz dest=/tmp remote_src=ture'
<h4>2-file module(mkdir,touch,chwon,chgrp,ls,selinux){file/direcyory}</h4>
ansible web -m file -a 'path=/tmp/ashu state=directory mode=0777 owner=root group=root'
ansible web -m file -a 'path=/tmp/ashu state=absent'
ansible web -m file -a 'path=/tmp/ashu state=touch mode=0777 owner=root group=root'
ansible-doc file
ansible web -m file -a 'path=/tmp/ashu state=touchdsadsadsa mode=0777 owner=root group=root'
ansible web -m file -a 'path=/tmp/ashu/annu/arun/aman state=directory mode=0777 owner=root group=root'
<h4>3-shell module scripting</h4>
ansible web -m shell -a '/root/run.sh' => ~/run.sh
ansible web -m shell -a 'sh /root/run.sh' => sh run.sh
<h4>4-fetch module(reverse of copy module)</h4>
ansible all -m fetch  -a 'src=/etc/fstab dest=backup'
<h4>5-yum module</h4>
ansible web -m yum -a 'name=httpd state=installed'
ansible web -m yum -a 'name=httpd state=present'
ansible web -m yum -a 'name=httpd state=latest'
ansible web -m yum -a 'name=httpd state=absent'
ansible web -m yum -a 'name=httpd state=removed'
ansible web -m yum -a 'name=httpd state=absentdfewfewfew'
<h4>6-service module</h4>
ansible web -m service -a 'name=postfix state=started enabled=true or 1 or yes'
ansible web -m service -a 'name=postfix state=stopped enabled=false or 0 or no'
ansible web -m service -a 'name=postfix state=stopdsadsa enabled=false'
<h4>7-get_url module(downloading,proxy,user,name,port)</h4>
ansible all -m get_url -a 'url=dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y dest=/tmp'
<h4>8-lineinfile (append line or delete line)</h4>
ansible web -m lineinfile -a 'line="Ashutosh" ALL=(ALL) NOPASSWORD: ALL' dest=/etc/sudoers insertafter=EOF' (End of line)
ansible web -m lineinfile -a 'line="Ashu" ALL=(ALL) NOPASSWORD: ALL' dest=/etc/sudoers insertafter=BOF' (Beg of line)
ansible web -m lineinfile -a 'line="Ashu" ALL=(ALL) NOPASSWORD: ALL' dest=/etc/sudoers state=absent' (Beg of line)
ansible web -m lineinfile -a 'regexp=shyam' dest=/etc/sudoers state=absent'
ansible web -m lineinfile -a 'regexp=shyam' dest=/etc/sudoers state=absent backup=yes'
<h4>9-replace module</h4>
ansible web -m replace -a 'regexp=ansible replace=puppet dest=/root/motd backup=yes'
<h4>10-uri module</h4>
ansible all -m uri -a 'url=https://facebook.com'
ansible all -m uri -a 'url=https://facebook12123.com'
<h4>11-stat module</h4>
ansible web -m  stat -a 'path=/etc/xyz'
<h4>12-user module</h4>
ansible web -m user -a 'name=ravi state=present uid=1010 group=root shell=/bin/bash'
<h4>13-group module</h4>
<h4>14-setup module</h4>
ansible web -m setup
ansible web -m setup -a 'filter=ansible_kernel'
ansible web -m setup -a 'filter=ansible_kernel' > report
ansible web -m setup -a 'filter=ansible_ker*'
ansible web -m setup -a 'filter=*ansible*'
ansible web -m setup  | grep ansible_eth0
<h4>15-raw module</h4>
ansible all -m ping -u employee -k
ansible web -m raw -a 'mkdir /data' -u employee -k
ansible web -m raw -a "uptime" -u employee -k 
ansible web -m raw -a "uptime" -u root -k	
ansible web -m raw -a 'uptime;cal'
<h4>16-command module</h4>
ansible web -m command -a 'uptime;cal'(error)
ansible web -m command -a 'cal'
</pre>