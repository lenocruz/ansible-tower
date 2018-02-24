
# Ansible-Tower v3.2.x Installation with one script after VM-CENTOS7/PHYSICAL-CENTOS7 had been provisioned.

Tested on Centos7.4 minimall-install with 2vcpus, 4GBram and 60GBdisk.  I added the kickstart.cfg file.

This will only take about 10-15 min if you are using SSD including vm provisioning.  

Do this after the vm had been provisioned and it should be executed to itself, login/su/sudo to root and copy below and paste it in the shell, then press enter.

```
curl https://raw.githubusercontent.com/itikabc/ansible-tower/master/script.sh | /bin/bash
```

```
Bug catcher

This is working on this repo, http://mirror.centos.org/centos/7 or this http://mirror.centos.org/centos/7.4.1708, 
but if it continue not to work because the package dependencies won't install, the ansible-tower installation will fail too.
There's a possibility that there's something wrong with the website internally, 
try again later or find a good URL repository.
This URL might change http://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz from time to time.
```

```
Once it's done and ansible-playbook have no failures.  Put this to your browser https://your-ip.  
You should see the Ansible-Tower login, use admin/password.

```

***https://www.youtube.com/watch?v=O8wmnr7Bs5Q***
