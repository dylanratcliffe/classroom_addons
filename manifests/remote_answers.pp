class classroom_addons::remote_answers (
  $master_vm_name,
) {
  vcsrepo { $classroom::params::workdir :
    ensure   => present,
    provider => 'git',
    remote   => origin,
    source   => {
      'origin'  => "${classroom::params::machine_name}@master.puppetlabs.vm:/var/repositories/${classroom::params::machine_name}.git",
      'answers' => "${master_vm_name}@master.puppetlabs.vm:/var/repositories/${master_vm_name}.git"
    }
  }
}