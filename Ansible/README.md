Ansible
=======

## Install

```bash
sudo apt-add-repository -y ppa:ansible/ansible && \
sudo apt-get update && \
sudo apt-get install -y ansible
```


## CI

```bash
$
ansible-playbook bootstrap.yml
```

## Run local

```bash
touch playbook.yml && \
vim playbook.yml
```

```yml
---
- hosts: all
  tasks:
    - shell: echo "hello world"
```

```bash
$
ansible-playbook -i "localhost," -c local playbook.yml
```

## Disable Cow

In ```~/.bashrc``` add this line:

```bash
export ANSIBLE_NOCOWS=1
```

## Tasks

### - Ensure a locale exists.

Run ```sudo ansible-playbook -i "localhost," -c local playbook.yml```

```yml
---
- hosts      : all
  become     : yes

  tasks      :

# ··············································································
    # ###  Ensure a locale exists.
# ··············································································
    - name      : Fix locale es_CO.UTF-8
      locale_gen:
        name    : es_CO.UTF-8
        state   : present

    - name      : Fix locale en_US.UTF-8
      locale_gen:
        name    : en_US.UTF-8
        state   : present


```

https://github.com/Mayccoll/Ansible-Resipes
