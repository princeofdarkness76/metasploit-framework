# -*- coding: binary -*-
require 'rex/io/stream_abstraction'
require 'rex/sync/ref'
require 'msf/core/handler/reverse_http'

module Msf
module Handler

###
#
# This handler implements the HTTP SSL tunneling interface.
#
###
module ReverseHttps

  include Msf::Handler::Reverse::SSL
  include Msf::Handler::ReverseHttp

  #
  # Returns the string representation of the handler type
  #
  def self.handler_type
    return "reverse_https"
  end

  #
  # Returns the connection-described general handler type, in this case
  # 'tunnel'.
  #
  def self.general_handler_type
    "tunnel"
  end

  #
  # Initializes the HTTP SSL tunneling handler.
  #
  def initialize(info = {})
    super

    register_options(
      [
        OptPort.new('LPORT', [ true, "The local listener port", 8443 ]),
      ], Msf::Handler::ReverseHttps)

    register_advanced_options(
      [
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
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/msf-complex-payloads
=======
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/msf-complex-payloads
=======
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/payload-generator.rb
=======
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        OptPath.new('HandlerSSLCert', [false, "Path to a SSL certificate in unified PEM format"]),
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
        OptBool.new('StagerVerifySSLCert', [false, "Whether to verify the SSL certificate in Meterpreter"])
      ], Msf::Handler::ReverseHttps)

  end

end

end
end

