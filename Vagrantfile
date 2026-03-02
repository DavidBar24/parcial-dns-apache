Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  # Recomendación: usa una red privada (host-only)
  # para que las VMs se vean entre sí.
  #
  # VM1 - Maestro
  config.vm.define "maestro" do |vm1|
    vm1.vm.hostname = "maestro.empresa.local"
    vm1.vm.network "private_network", ip: "192.168.56.10"
    vm1.vm.provider "virtualbox" do |vb|
      vb.name = "vm1-maestro"
      vb.memory = 1024
      vb.cpus = 1
    end
  end

  # VM2 - Esclavo
  config.vm.define "esclavo" do |vm2|
    vm2.vm.hostname = "esclavo.empresa.local"
    vm2.vm.network "private_network", ip: "192.168.56.11"
    vm2.vm.provider "virtualbox" do |vb|
      vb.name = "vm2-esclavo"
      vb.memory = 1024
      vb.cpus = 1
    end
  end
end