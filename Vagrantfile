
Vagrant.configure("2") do |config|

    disk0 = "vagrant_hd.vdi"

    config.vm.define "db" do |db|

    db.vm.box = "hashicorp/precise64"
    db.vm.network "forwarded_port", guest: 80, host: 8080
    db.vm.provision :shell, path: "bootvagrant.sh"
      db.vm.provider :virtualbox do |db1|
        db1.customize ["createhd", "--filename", disk0, "--size", 10*1024]
        db1.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "1", "--type", "hdd", "--medium", disk0]
      end
    end

end
