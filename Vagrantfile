Vagrant.configure("2") do |config|


    config.vm.define "db1" do |db1|
        db1.vm.box = "hashicorp/precise64"
        db1.vm.network "forwarded_port", guest: 22, host: 24
        db1.vm.provision :shell, path: "add_key.sh"
    end


    config.vm.define "db2" do |db2|
        db2.vm.box = "hashicorp/precise64"
        db2.vm.network "forwarded_port", guest: 22, host: 23, host_ip: '127.0.0.2'
        db2.vm.provision :shell, path: "add_key.sh"
    end
end
