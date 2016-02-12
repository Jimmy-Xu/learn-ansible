**Running ansible playbook in localhost**

## Usage
```
$./run.sh
```

## Specify sudo password for Ansible
```
//create secret
$ansible-vault create ./etc/secret

//content of secret
$ansible_sudo_pass: osboxes.org

//generate vault.txt
$echo osboxes.org > ./etc/vault.txt

//run
$ansible-playbook ./playbook.yml -u ${USER} -i "localhost," -c local -v --sudo --vault-password-file=./etc/vault.txt
```

## install ansible 2.1.0
```
$ git clone git://github.com/ansible/ansible.git --recursive
$ cd ansible

//for centos
$ sudo yum -y install git asciidoc rpm-build python2-devel
$ make rpm
$ sudo rpm -Uvh ./rpm-build/ansible-*.noarch.rpm

//for ubuntu
$ make deb
$ sudo dpkg -i ./deb-build/ansible-*.deb

//check installed version
$ ansible --version
ansible 2.1.0
```
