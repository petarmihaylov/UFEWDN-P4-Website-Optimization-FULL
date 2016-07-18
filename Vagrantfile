# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Standard minimal Ubuntu box
  config.vm.box = "ubuntu/trusty32"

  # Controls the memory and cpus of a box
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--cpus", "2"]
  end

  # Configure the VM to be accessible from the Local network only (not the Internet)
  config.vm.network "public_network", ip: "192.168.0.177"

  # Port 9000 is where grunt server is doing serving from
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  # Port 35729 is required by LiveReload to reflect content chaenges
  config.vm.network :forwarded_port, guest: 3001, host: 3001

  # Add a custom project directory to separe the project files from the box setup`
  config.vm.synced_folder "project", "/home/vagrant/project"

  # Configure everything else ready to run Yeoman
  config.vm.provision "shell", path: "provision.sh"
end
