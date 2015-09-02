class classroom_addons::remote_answers (
  $master_vm_name,
) {
  include classroom::params

  exec { "git remote add answers ${master_vm_name}@master.puppetlabs.vm:/var/repositories/${master_vm_name}.git":
    path   => $::path,
    cwd    => $classroom::params::workdir,
    unless => "git remote -v | grep ${master_vm_name}",
  }
}
