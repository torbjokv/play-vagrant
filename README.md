#Play framework and Vagrant with some Ansible magic

A simple Vagrant config with Play Framework, Ansible and MySQL server that gets you started quickly with a working example. When deployed, the folder structure will look like this: 
- yourrepo/
  - frameworks/
      - play-2.2.3/
  - project/
      - example_project
  - provision/
      - templates/
      - ansible_hosts
      - playbook.yml
  - ansible.cfg
  - Vagrantfile


##Requirements

- GIT, Java, ... the basic stuff
- VirtualBox https://www.virtualbox.org/
- Vagrant http://www.vagrantup.com/  (ATOW version 1.4.3)
- Ansible http://docs.ansible.com/ (ATOW version 1.5)
- Some console knowledge :-)

##Getting Started
    
    git clone git@github.com:torbjokv/play-vagrant.git yourrepo && cd yourrepo && vagrant up

This takes time. Grab a coffee - or two!

    vagrant ssh -c "cd project && play ~run"

When it's ready, go to your browser and enter http://localhost:9000/ 
Le voilà!

##Tips and tricks

- If the filesystem is slow, set NETWORK_FILE_SYSTEM to true in the Vagrantfile, reboot the VM ("vagrant halt; vagrant up") and enter your root password.

##Problems?

Vagrant and ansible have good dokumentation at http://docs.vagrantup.com/v2 and http://docs.ansible.com/



[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/torbjokv/play-vagrant/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/f118040f0d6c51d3d575e3537f2ddddc "githalytics.com")](http://githalytics.com/torbjokv/play-vagrant)
