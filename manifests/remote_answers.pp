class classroom_addons::remote_answers (
  $master_vm_name,
) {
  exec { 'git remote add answers gandalf@master.puppetlabs.vm:/var/repositories/gandalf.git':
    path   => $::path,
    cwd    => $classroom::params::workdir,
    unless => 'git remove -v | grep gandalf',
  }
}
