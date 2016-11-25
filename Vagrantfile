
Vagrant.configure("2") do |config|

    disk0 = "/home/dor/Documents/vagrant_hd.vdi"

    config.vm.define "db" do |db|

    db.vm.box = "hashicorp/precise64"
      db.vm.provider :virtualbox do |db1|
        db1.customize ["createhd", "--filename", disk0, "--size", 10*1024]
        db1.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "1", "--type", "hdd", "--medium", disk0]
      end
    end



    config.vm.define "web1" do |web1|
  web1.vm.box = "hashicorp/precise64"
  web1.vm.network "forwarded_port", guest: 80, host: 8081
  web1.vm.provision :shell, path: "bootvagrant.sh"
  end


  config.vm.define "web2" do |web2|
  web2.vm.box = "hashicorp/precise64"
  web2.vm.network "forwarded_port", guest: 80, host: 8082
  web2.vm.provision :shell, path: "bootvagrant.sh"
  end




end
