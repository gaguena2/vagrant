Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  # config.vm.box_check_update = false
  #config.vm.network "private_network", type: "dhcp"
  #config.vm.network "public_network", ip: "192.168.1.10", bridge: "wlp3s0"
  #config.vm.network "public_network", ip: "192.168.15.10", bridge: "wlp2s0"
  config.vm.synced_folder "D:/data", "/vagrant_data"

  #config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network :forwarded_port, guest: 8200, host: 8200

  config.vm.provider "VirtualBox" do |vb|
     vb.memory = "6144"
  end
  config.vm.provision "shell", path: "provision.sh"
end
