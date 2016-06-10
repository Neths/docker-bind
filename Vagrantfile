Vagrant.configure('2') do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, :ip => '10.20.1.10'
  config.vm.network :forwarded_port, guest: 53, host: 5553
end
