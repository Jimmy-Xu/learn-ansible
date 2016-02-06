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



