<h4>Playbook without Loop</h4>
<pre>
- name: without loop
  hosts: all
  tasks:
      - name: copy /etc/passwd into tmp
        copy: 
          src: /etc/passwd
          dest: /tmp
      - name: copy /etc/shadow into tmp
        copy: 
          src: /etc/shadow
          dest: /tmp
      - name: copy /etc/gshadow into tmp
        copy: 
          src: /etc/gshadow
          dest: /tmp
      - name: copy /etc/group into tmp
        copy: 
          src: /etc/group
          dest: /tmp             
</pre>
<h4>Playbook with Loop</h4>
<pre>
- name: with loop
  hosts: all
  tasks:
      - name: copy /etc/passwd,/etc/group,/etc/shadow,/etc/gshadow into tmp
        copy: 
          src: "{{ item }}"
          dest: /tmp
        with_items:
          - /etc/passwd
          - /etc/group
          - /etc/shadow
          - /etc/gshadow
      - name: copy /etc/secure into tmp,opt,root
        copy: 
          src: /var/log/secure
          dest: "{{ item }}"
        with_items:
          - /root
          - /opt
          - /root
                     
</pre>
<h4>Ansible Nested loop</h4>
<pre>
- name: with loop
  hosts: all
  tasks:
    #[DEPRECATION WARNING]: Invoking "yum" only once while using a loop via squash_actions is deprecated.
    - name: install httpd,nfs-utils,samba without loop
      yum: 
        name:
        - httpd
        - nfs-utils
        - samba
        state: latest
    - name: install httpd,nfs-utils,samba with loop
      yum:
        name: "{{ item }}"             
        state: latest
      with_items:
          - httpd
          - nfs-utils
          - samba      
                         
</pre>
<h4>Ansible Playbook yum with loop and without loop</h4>
<pre>
- name: yum with loop
  hosts: all
  tasks:
    #[DEPRECATION WARNING]: Invoking "yum" only once while using a loop via squash_actions is deprecated.
    - name: install httpd,nfs-utils,samba without loop
      yum: 
        name:
        - httpd
        - nfs-utils
        - samba
        state: latest
    - name: install httpd,nfs-utils,samba with loop
      yum:
        name: "{{ item }}"             
        state: latest
      with_items:
          - httpd
          - nfs-utils
          - samba      
                    
</pre>
<h3>playbook_LoopVariableInSingleFiles.yml</h3>
<pre>
myfiles:
  - /etc/passwd
  - /etc/group
  - /etc/shadow
  - /etc/gshadow
mydirs:
  - /root
  - /opt
  - /tmp
  - /var  
</pre>
<h3>Ansible Playbook Use Custome Variable File </h3>
<pre>
- name: without loop
  hosts: all
  vars_files:
    - playbook_LoopVariableInSingleFiles.yml   
  tasks:
      - name: copy /etc/passwd,/etc/group,/etc/shadow,/etc/gshadow into tmp
        copy: 
          src: "{{ item }}"
          dest: /tmp
        with_items:
          - "{{ myfiles }}"
      - name: copy /etc/passwd into /root,/opt,/tmp,/var
        copy: 
          src: /etc/passwd
          dest: "{{ item }}"
        with_items:
          - "{{ mydirs }}"    
</pre>
<h3>Anaible Playbook Use custom loop </h3>