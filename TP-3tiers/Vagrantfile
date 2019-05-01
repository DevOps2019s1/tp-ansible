Vagrant.configure("2") do |config|

  # Linux OS CentOS
  config.vm.box = "geerlingguy/centos7"

  # Web server
  config.vm.define "web-server" do |web|
    web.vm.hostname = "devops-web.dev"
    # static ip address
    web.vm.network :private_network, ip: "192.168.60.4"
    web.vm.network :forwarded_port, guest: 80, host: 8080

    # Ansible provisionning
    web.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-webserver.yml"
    end

  end
    
  # Application server
  config.vm.define "app-server" do |app|
    app.vm.hostname = "devops-app.dev"
    # static ip address
    app.vm.network :private_network, ip: "192.168.60.5"

    # Ansible provisionning
    app.vm.provision "playbook-infra", type:'ansible' do |ansible|
      ansible.playbook = "install-appserver.yml"
    end

    app.vm.provision "playbook-app", type:'ansible' do |ansible|
      ansible.playbook = "install-app.yml"
    end

  end

  # Database server
  config.vm.define "db-server" do |db|
    db.vm.hostname = "devops-db.dev"
    # static ip address
    db.vm.network :private_network, ip: "192.168.60.6"

    # Ansible provisionning
    db.vm.provision "ansible" do |ansible|
      ansible.playbook = "install-db.yml"
    end

  end

end
