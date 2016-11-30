# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define :server1 do |server|
    server.vm.box = "ubuntu/xenial64"
    server.vm.provision :shell, :path => "bootstrap.sh"
    server.vm.provision :shell, :path => "config_zsh.sh", privileged: false
    server.vm.provision :shell, :path => "config_rust.sh", privileged: false
    server.vm.provision :shell, :path => "config_go.sh", privileged: false
    server.vm.network :private_network, ip: "10.0.0.20"
    server.vm.hostname = "server1"
    server.vm.synced_folder "server1/src", "/home/ubuntu/src"
    config.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = "2048"
    end
  end

  config.vm.define :server2 do |server|
    server.vm.box = "ubuntu/xenial64"
    server.vm.provision :shell, :path => "bootstrap.sh"
    server.vm.provision :shell, :path => "config_zsh.sh", privileged: false
    server.vm.provision :shell, :path => "config_rust.sh", privileged: false
    server.vm.provision :shell, :path => "config_go.sh", privileged: false
    server.vm.network :private_network, ip: "10.0.0.21"
    server.vm.hostname = "server2"
    server.vm.synced_folder "server2/src", "/home/ubuntu/src"
    config.vm.provider "virtualbox" do |vb|
      vb.cpus = 2
      vb.memory = "2048"
    end
  end
end