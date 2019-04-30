Vagrant.configure(&quot;2&quot;) do |config|
  # Linux OS CentOS
  config.vm.box = &quot;geerlingguy/centos7&quot;
  # Web server
  config.vm.define &quot;web-server&quot; do |web|
    web.vm.hostname = &quot;devops-web.dev&quot;
    # static ip address
    web.vm.network :private_network, ip: &quot;192.168.60.14&quot;
    web.vm.network :forwarded_port, guest: 80, host: 8080
  end
  # Application server
  config.vm.define &quot;app-server&quot; do |app|
    app.vm.hostname = &quot;devops-app.dev&quot;
    # static ip address
    app.vm.network :private_network, ip: &quot;192.168.60.15&quot;
    app.vm.provision &quot;playbook-app&quot;, type:&#39;ansible&#39; do |ansible|
      ansible.playbook = &quot;appservers.yml&quot;
    end
  end
end
