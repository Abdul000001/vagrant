# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
    # The most common configuration options are documented and commented below.
    # For a complete reference, please see the online documentation at
    # https://docs.vagrantup.com.
  
    # Every Vagrant development environment requires a box. You can search for
    # boxes at https://vagrantcloud.com/search.
    config.vm.box = "spox/ubuntu-arm" 
    config.vm.box_version = "1.0.0"
  
    # Disable automatic box update checking. If you disable this, then
    # boxes will only be checked for updates when the user runs
    # `vagrant box outdated`. This is not recommended.
    # config.vm.box_check_update = false
  
    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine. In the example below,
    # accessing "localhost:8080" will access port 80 on the guest machine.
    # NOTE: This will enable public access to the opened port
    # config.vm.network "forwarded_port", guest: 80, host: 8080
  
    # Create a forwarded port mapping which allows access to a specific port
    # within the machine from a port on the host machine and only allow access
    # via 127.0.0.1 to disable public access
    # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  
    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    config.vm.network "private_network", ip: "192.168.56.19"  
    # Create a public network, which generally matched to bridged network.
    # Bridged networks make the machine appear as another physical device on
    # your network.
     config.vm.network "public_network"
  
    # Share an additional folder to the guest VM. The first argument is
    # the path on the host to the actual folder. The second argument is
    # the path on the guest to mount the folder. And the optional third
    # argument is a set of non-required options.
    
    # Windows Path
    # config.vm.synced_folder "F:\\scripts\\shellscripts", "/opt/scripts"
     
    # MacOS
    #  config.vm.synced_folder "/Users/imran/Desktop/scripts", "/opt/scripts"
  
  
    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    # Example for VirtualBox:
    #
    config.vm.provider "vmware_desktop" do |vb|
        vb.ssh_info_public = true
        vb.gui = true
            #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
        vb.memory = "1600"
        vb.cpus = "2"
    end
    #

    config.vm.provision "docker" do |docker|
        # Build de l'image à partir du Dockerfile local
        docker.build_image "/vagrant/mongoDb", args: "-t mongodaube:1"
    
        # Lancement d'un conteneur à partir de l'image
        docker.run "mongodaube", image: "mongodaube:1", daemonize: true, args: "-p 27017:27017 -p 28017:28017"
    end
    # View the documentation for the provider you are using for more
    # information on available options.
  
    # Enable provisioning with a shell script. Additional provisioners such as
    # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
    # documentation for more information about their specific syntax and use.
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      echo test 
      apt-get install -y redis
      cd /vagrant/redis
      chmod +x ./cluster.sh
      ./cluster.sh
      echo OKAY OKAY
      sleep 10
      chmod +x ./clusterCombine.sh
      ./clusterCombine.sh
      echo REDIS OKAY
    SHELL
  end