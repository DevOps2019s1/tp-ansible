Vagrant.configure("2") do |config|

    # Linux OS CentOS
    config.vm.box = "geerlingguy/centos7"
  
    # Web server
    config.vm.define "web-server" do |web|
      web.vm.hostname = "devops-web.dev"
      # static ip address
      web.vm.network :private_network, ip: "192.168.60.14"
      web.vm.network :forwarded_port, guest: 80, host: 8080
    end
      
    # Application server
    config.vm.define "app-server" do |app|
      app.vm.hostname = "devops-app.dev"
      # static ip address
      app.vm.network :private_network, ip: "192.168.60.15"

      app.vm.provision "playbook-app", type:'ansible' do |ansible|
        ansible.playbook = "appservers.yml"
      end

    end

end