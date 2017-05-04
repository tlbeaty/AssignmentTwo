class accounts {

	group { "webdevs" :
		ensure	=> present,
		gid	=> '901',
	}

	user { 'tom' :
		ensure	=> present,
		uid	=> '600',
		gid	=> 'users',
		groups	=> 'webdevs',
		shell	=> '/bin/bash',
		home	=> "/home/tom",
		password	=> '$1$qZWxDn.1$dg4p61Ubc7e7VE2Yyfzt1/',
		managehome	=> true,
	}

	user { 'dick' :
		ensure  => present,
		uid	=> '601',
		gid	=> 'users',
		groups  => 'webdevs',
		shell   => '/bin/bash',
		home    => "/home/dick",
		password	=> '$1$qZWxDn.1$dg4p61Ubc7e7VE2Yyfzt1/',
		managehome      => true,
	}

	user { 'ravi' :
		ensure  => present,
		uid	=> '602',
		gid	=> 'users',
		groups  => 'webdevs',
		shell   => '/bin/bash',
		home    => "/home/ravi",
		password	=> '$1$qZWxDn.1$dg4p61Ubc7e7VE2Yyfzt1/',
		managehome      => true,
	}

	ssh_authorized_key { 'tom@meow.example.com':
		ensure => present,
		user   => 'tom',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfo75mDS9YvSELdLsqikk69fG8cLbqqEahadKQmBWrYOZjWDoK/4QzSCr8rqfk2H1bq0+PX6ayoR+MrlmXiGeJsaaO9Wj/XkO6bbiJUiJYjwfaV07afC/KUWLqAmXkoJJZ8p1D1m3XoFPEx+RyHTh+Ix8OzisHfH+dYGPhNCePKuRATZr3r+y9kvaRWEvOCjkJlV16/w6jYZMuSSeEO4bwn5mkbcZZQ8uLVyvViYk3yHL+csaCEuWIh1tgelIe+ppEwozbKS3xZP1Ak6HH6HO4IPxA7gR5qARzDUVXYO8cAIiYwuXT9VYZPD3Tt9faGscPFXVU+hVqHHgEtmJaOxLf',
	}

	ssh_authorized_key { 'dick@meow.example.com':
		ensure	=>	present,
		user	=>	'dick',
		type	=>	'ssh-rsa',
		key	=>	'AAAAB3NzaC1yc2EAAAADAQABAAABAQC6dP8WbC34Uk5Cmdw+l3DUn1OkGndYW8M/iyL0CEKR7WWSVA6WZFoUagoin1Z0aDrA4x+9SLksOqRDU2DodvO86zU7zxbE+oxhr8QEh9nAvJjHHLACpRQUydNaAMrjbiOlJRLRsZMtfmNKVtSnidm2hxhLHvl6bj3Z5rnCfoPQEmCC35iRNC8oCdzfurP9NIGp8YzwLpAeGH/suyrvgZCALs59VVft8X0QmOgCj51r+n6xk7MxX0Th/GHzpAPcKoDTZcbbOshavQlsArMgC1vMJ7FFaIhysqzSAtP+HUiCcCOyGkV4oB3hmdfBsc4C52Vd8O3kMKvmFgl9GIVw2gTp',
	}

	ssh_authorized_key { 'ravi@meow.example.com':
		ensure	=>	present,
		user	=>	'ravi',
		type	=>	'ssh-rsa',
		key	=>	'AAAAB3NzaC1yc2EAAAADAQABAAABAQDvabUEkoQdePJyd8jfxUc8NTzttR54MXJEpmkORZyUrFQmlHccqYRtBRhQlkU2Tk2EKpC3D3NlbRKaWOh765geaVr4DcQyAYLUor6uak/2uzryrn0kjR365E0qHGbmg1ZFhTCz1B/csXYCfeU6ELsIh92FiArU1GOKNIcZeb9KwHtSy5p0a1IsOEGAd/gwVoB6uAOCiqSSTn9uBGYtoBKHUuRBIHO2zi+dAU4v1VSXBo+NaliWKpBYFJC9TCZq/+8gDeUUS7bauuefxP5xV+qRJcKzyH1B08jif+hmJxIb56WGRlU6IXAYmY4Oz+ENTnCDf6BGoK0Gfm8ax72vZTY1',
	}

}
