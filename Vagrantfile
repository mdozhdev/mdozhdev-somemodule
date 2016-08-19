# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.synced_folder ".", "/puppet"
  config.vm.provision "shell", inline: <<-SHELL
    wget -O /tmp/puppet.deb https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
    dpkg -i /tmp/puppet.deb
    apt-get update
    apt-get dist-upgrade -y
    apt-get install -y puppet-common bundler
    puppet module install terc-xmlfile
    cd /puppet; bundle install
  SHELL
end
