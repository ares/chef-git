name             'git'
maintainer       "Ares"
maintainer_email "ar3s.cz@gmail.com"
license          "All rights reserved"
description      "Installs/Configures git"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"

depends	'user', '>= 0.1.0'

attribute 'name',
          :display_name => 'Git author name',
          :description => 'Git commit author full name',
          :type => 'string',
          :required => 'recommended',
          :default => 'Marek Hulan'

attribute 'email',
          :display_name => 'Git author email',
          :description => 'Git commit author email',
          :type => 'string',
          :required => 'recommended',
          :default => 'ares@igloonet.cz'

attribute 'gpg_key_id',
          :display_name => 'GPG key',
          :description => 'GPG key id used for signing',
          :type => 'string',
          :required => 'optional',
          :default => '55609F574E110E9E'
