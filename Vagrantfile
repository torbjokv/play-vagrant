# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant version 1.4.3
# Ansible 1.5

VAGRANTFILE_API_VERSION = "2"
NETWORK_FILE_SYSTEM = false

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :forwarded_port, host: 9000, guest: 9000
  config.vm.network :private_network, ip: "192.168.111.222"
  config.vm.synced_folder "project", "/home/vagrant/project", :nfs => NETWORK_FILE_SYSTEM
  config.vm.synced_folder "frameworks", "/home/vagrant/frameworks", :nfs => NETWORK_FILE_SYSTEM
  
  config.vm.provision :ansible do |ansible| 
    ansible.limit = 'play_vagrant'
    ansible.playbook = "provisioning/playbook.yml"
    ansible.inventory_path = "provisioning/ansible_hosts"
  end

end
