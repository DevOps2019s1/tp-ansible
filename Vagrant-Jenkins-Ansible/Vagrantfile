Vagrant.configure("2") do |config|

    # Linux OS CentOS
    config.vm.box = "geerlingguy/centos7"
  

    config.vm.define "toolsserver" do |tools|
        tools.vm.provider :virtualbox do |v|
            v.name = "tools"
            v.memory = 512
            v.cpus = 1
            v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
            v.customize ["modifyvm", :id, "--ioapic", "on"]
        end

        tools.vm.hostname = "toolsserver"
        tools.vm.network :private_network, ip: "192.168.60.13"
        tools.vm.network :forwarded_port, guest: 8080, host: 18080
    end

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