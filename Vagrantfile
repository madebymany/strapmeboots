# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define :precise64 do |precise64|
    precise64.vbguest.auto_update = false
    precise64.vm.box = "precise64"
    precise64.vm.box_url = "http:://files.vagrantup.com/precise64.box"
    precise64.vm.network "forwarded_port", guest: 3333, host: 3333
    precise64.vm.network "public_network", :bridge => 'en0: Wi-Fi (AirPort)'
    precise64.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 1028]
    end
  end
end

