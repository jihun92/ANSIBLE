# Ansible server build

- This is document for build of ansible server and remote server

# Using Tool

|    Tool     | Version |
| :---------: | :-----: |
|   Vagrant   |  2.2.9  |
| Virtual box | 5.2.42  |

# Server OS information

- ansible server info

  |     OS     | Python |
  | :--------: | :----: |
  | CentOS 7.8 | 2.7.5  |

- remote server info

  |         OS          |       Python       |
  | :-----------------: | :----------------: |
  |     CentOS 7.8      |       2.7.5        |
  | Ubuntu 14.04.6 LTS  |       2.7.6        |
  | Windows server 2016 | Not install Python |



# Create VM Server using vagrant

- Create VM Server (ansible server and remote server)

  1. execute CMD or Powershell
  2. Change dir to "C:\HashiCorp"
  3. vagrant Initialization

    ```sh 
    > vagrant init
    ```

  4. overwrite to ""/ansible/vagrant/Vagrantfile" form C:\HashiCorp\Vagrantfile"

  5. vagrant up

    ```sh
    > vagrant up
    ```

# add line in .bashrc

```sh
vi ~/.bashrc
export ANSIBLE_CONFIG=~/ansible/cfg
alias anp='ansible-playbook'
```
