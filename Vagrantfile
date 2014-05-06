Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.box       = 'precise64'
  config.vm.box_url   = 'http://files.vagrantup.com/precise64.box'
  config.vm.host_name = 'vagrant-dev-box'
  config.vm.provision :shell, :inline => "ulimit -n 4048"
  config.vm.customize do |vm|
    vm.memory_size = 2048
  end

  config.vm.forward_port 1080, 1080
  config.vm.forward_port 3000, 3000
  

  config.vm.provision :puppet,
    :manifests_path => 'puppet/manifests',
    :module_path    => 'puppet/modules',
    :manifest_file  => 'default.pp'

end
