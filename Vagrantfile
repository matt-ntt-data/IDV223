Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1504-desktop"

  config.vm.network "public_network"

  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = true
  end
  
  #update apt-get, then install tomcat app server and gradle for build system
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y tomcat8
    sudo apt-get install -y gradle
  SHELL
  
  #additional dependencies
  config.vm.provision "shell" do |s|
	s.inline = 'wget --no-check-certificate https://github.com/aglover/ubuntu-equip/raw/master/equip_java8.sh && bash equip_java8.sh'
	s.inline = 'wget --no-check-certificate https://github.com/resilva87/ubuntu-equip/raw/master/equip_eclipse_ide.sh && bash equip_eclipse_ide.sh' 	
  end

  config.vm.provision "shell", path: "setup.sh"

end
