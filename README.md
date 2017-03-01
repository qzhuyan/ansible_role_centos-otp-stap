Role Name
=========

install systemtap and build dtrace enabled erlang VM

Requirements
------------

Centos 7

Role Variables
--------------
kernel version of the centos node. If not match, this kernel version will be installed and node will be rebooted
~~~~
kernel_version: 3.10.0-514.6.1.el7

~~~~
extra yum repo
~~~~
extra_repo: "base-debuginfo"
~~~~

yum packages will be installed

~~~~
yum_packages: kernel-{{ kernel_version }},kernel-devel-{{ kernel_version }},kernel-debuginfo-{{ kernel_version }},systemtap,systemtap-runtime
~~~~

private\_ssh\_key is only need when OTP source is fetched from git repo which requires your ssh key.

~~~~
private_ssh_key: "/home/foo/.ssh/id_dsa"
~~~~

otp\_rel:  OTP release version. See [kerl](https://github.com/kerl/kerl) for more
~~~~
otp_rel: "17.4"
#or
otp_rel: "git https://github.com/erlang/otp.git dev 19.2_dev"
~~~~

otp\_build: build name

~~~~
otp_build: my_otp_17.4
#or
otp_build: my_git_otp_19.2_dev
~~~~

Dependencies
------------
N/A

Example Playbook
----------------

~~~~
- hosts: localhost
  roles:
    - ansible-role-centos-otp-stap
  vars:
    otp_rel: 17
    otp_build: otp_17
~~~~


License
-------

BSD

Author Information
------------------

N/A
