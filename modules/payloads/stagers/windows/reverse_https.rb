##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/reverse_https'
require 'msf/core/payload/windows/reverse_https'

module Metasploit4

  CachedSize = 347

  include Msf::Payload::Stager
  include Msf::Payload::Windows
  include Msf::Payload::Windows::ReverseHttps

  def initialize(info = {})
    super(merge_info(info,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-development-environment
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
>>>>>>> pod/metasploit-development-environment
      'Name'        => 'Windows Reverse HTTPS Stager (wininet)',
      'Description' => 'Tunnel communication over HTTPS (Windows wininet)',
      'Author'      => 'hdm',
      'License'     => MSF_LICENSE,
      'Platform'    => 'win',
      'Arch'        => ARCH_X86,
      'Handler'     => Msf::Handler::ReverseHttps,
      'Convention'  => 'sockedi https'))
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
=======
<<<<<<< HEAD
=======
=======
>>>>>>> origin/payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
<<<<<<< HEAD
=======
=======
=======
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-framework
>>>>>>> pod/metasploit-development-environment
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
      'Name'          => 'Reverse HTTPS Stager',
      'Description'   => 'Tunnel communication over HTTP using SSL',
      'Author'        => 'hdm',
      'License'       => MSF_LICENSE,
      'Platform'      => 'win',
      'Arch'          => ARCH_X86,
      'Handler'       => Msf::Handler::ReverseHttps,
      'Convention'    => 'sockedi https'))
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/feature/complex-payloads
=======
>>>>>>> origin/feature/complex-payloads
=======
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
=======
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
=======
>>>>>>> msf-complex-payloads
=======
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-development-environment
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
<<<<<<< HEAD
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
=======
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> master
=======
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
      'Name'        => 'Windows Reverse HTTPS Stager (wininet)',
      'Description' => 'Tunnel communication over HTTPS (Windows wininet)',
      'Author'      => 'hdm',
      'License'     => MSF_LICENSE,
      'Platform'    => 'win',
      'Arch'        => ARCH_X86,
      'Handler'     => Msf::Handler::ReverseHttps,
      'Convention'  => 'sockedi https'))
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
=======
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> payload-generator.rb
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> payload-generator.rb
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> master
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> master
=======
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> feature/complex-payloads
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> origin/feature/complex-payloads
=======
>>>>>>> rapid7/feature/complex-payloads
>>>>>>> pod/metasploit-development-environment
  end

end
