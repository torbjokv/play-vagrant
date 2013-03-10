#Play framework and Vagrant

Vagrant config with Play Framework and mysql server. When deployed, the vagrant and project folders is seperated so that the version control can be seperate. When completed, the folder structure will look like this: 
- somecoolstuff/
  - project/
      - frameworks/
      - code/
  - vagrant/
      - cookbooks/
      - Vagrantfile


##Requirements

- VirtualBox https://www.virtualbox.org/
- Vagrant http://www.vagrantup.com/
- Some console knowledge :-)

##Install

    vagrant box add precise32 http://files.vagrantup.com/precise32.box
    mkdir somecoolstuff && cd somecoolstuff
    git clone git@github.com:torbjokv/play-vagrant.git vagrant
    mkdir -p project/frameworks && cd project/frameworks
    curl http://downloads.typesafe.com/play/2.1.0/play-2.1.0.zip -o play-2.1.0.zip
    unzip play-2.1.0.zip
    
Clone your code into the folder _somecoolstuff/project/code_ 
For this example we can use some of play's examples.

    cd ..
    mkdir code
    cp -r frameworks/play-2.1.0/samples/scala/comet-live-monitoring/* code

##Getting Started

Go to _somecoolstuff/vagrant/_ and run the following commands 

    vagrant up 
    // if it asks, enter your password to give it the necessary access rights. 
    // This takes time.
    vagrant ssh
    cd project/code
    ../frameworks/play-2.1.0/play run

When it's ready, go to your browser and enter http://localhost:9000/ 
Le voilà!


##Problems?

Vagrant have good dokumentation at http://docs-v1.vagrantup.com/v1/docs/index.html

