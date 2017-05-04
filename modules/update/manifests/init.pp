class update {

  exec { "yum-update":
    command =>	'/usr/bin/yum -y update'
  }

}
