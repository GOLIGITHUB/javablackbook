<h3>First Way:Install Ansible in rhel 8 using subscription-manager</h3>
<ul>	
	<li>subscription-manager register</li>
	<li>user name : ?</li>
	<li>passwd : ?</li>
	<li>subscription-manager list --available</li>
	<li>subscription-manager attach --pool=?</li>
	<li>subscription-manager repos --list</li>
	<li>subscription-manager repos --list | grep "ansible-2.8-for-rhel-8-x86_64-rpms"</li>
	<li>subscription-manager repos --enable=ansible-2.8-for-rhel-8-x86_64-rpms</li>
	<li>yum -y install ansible</li>
</ul>
<h3>Second Way:Install Ansible in rhel8 using  epel repository</h3>
<ul>
  <li> dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm</li>
  <li> dnf update</li>
  <li> yum install ansible -y </li>
</ul>

<h3>ansible --version</h3>
<pre>
  ansible 2.8.6
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/root/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3.6/site-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.6.8 (default, Jan 11 2019, 02:17:16) [GCC 8.2.1 20180905 (Red Hat 8.2.1-3)]
</pre>

<h3>This command show you all module list</h3>
<p>ansible-doc -l</p>