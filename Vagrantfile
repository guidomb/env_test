# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 3000, 3000

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "apt"
    chef.add_recipe "rails_env"
    chef.json = {
      'rbenv' => {
        'user_installs' => [
          { 'user' => 'vagrant' }
        ]
      }
    }
  end

end