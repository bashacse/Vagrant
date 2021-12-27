# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # Box Settings
  config.vm.box = "centos/7"
  ENV["VAGRANT_DETECTED_OS"] = ENV["VAGRANT_DETECTED_OS"].to_s + " cygwin"
  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Vagrant CentOs 7"
    vb.memory = 1024
    # vb.cpus = 4
  end

  # Network Settings
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  #config.vm.network "public_network"
  config.vm.network "private_network", ip: "192.168.1.110"

  # Folder Settings(here "." meants current directory of host machine)
  #config.vm.synced_folder ".", "/var/www/html", :mount_options => ["dmode=777", "fmode=666"] 
  config.vm.synced_folder ".", "/vagrant", disabled: 'true'
  
  # Provision Settings
  config.vm.provision "shell", path: "provision_script.sh"
end