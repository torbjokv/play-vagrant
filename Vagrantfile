# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.forward_port 9000, 9000
  config.vm.share_folder "project-files", "project", "../project", {:create => true, :nfs => true}
  #config.vm.share_folder "project-files", "project", "../project", {:create => true}
  config.vm.network :hostonly, "10.0.0.144" #to allow nfs and nfsd to communicate

  config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe("vagrant_main")
      chef.json = {
        :play => {
          :install_dir => "/home/vagrant/project/frameworks/play-2.0.4"
        },
        :settings => {
          :directory => "/home/vagrant/project/code"
        },
        :java => {
          :oracle => {
            "accept_oracle_download_terms" => true
          }
        },
        :mysql => {
          :server_root_password => "MmAyx7GNu6XVhez6",
          :server_debian_password => "MmAyx7GNu6XVhez6",
          :server_repl_password => "MmAyx7GNu6XVhez6",
          :bind_address => "127.0.0.1"
        },
        :build_essential => {
          :compiletime => true
        }
      }
  end

end
