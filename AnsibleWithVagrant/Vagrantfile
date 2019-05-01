Vagrant.configure("2") do |config|

  # Linux OS CentOS
  config.vm.box = "geerlingguy/centos7"

  # Web server
  config.vm.define "webserver1" do |web|
    web.vm.hostname = "webserver1"
    # static ip address
    web.vm.network :private_network, ip: "192.168.60.14"
  end
    
  # Application server
  config.vm.define "appserver1" do |app|
    app.vm.hostname = "appserver1"
    # static ip address
    app.vm.network :private_network, ip: "192.168.60.15"
  end

end