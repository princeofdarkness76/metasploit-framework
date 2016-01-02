# -*- coding: binary -*-
require 'msf/core'

module Msf::Payload::Python

  #
  # Encode the given python command in base64 and wrap it with a stub
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
<<<<<<< HEAD
>>>>>>> pod/metasploit-development-environment
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> pod/metasploit-development-environment
  # that will decode and execute it on the fly. The code will be condensed to
  # one line and compatible with all Python versions supported by the Python
  # Meterpreter stage.
=======
  # that will decode and execute it on the fly.
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/msf-complex-payloads
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/msf-complex-payloads
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/payload-generator.rb
=======
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> 4.11.2_release_pre-rails4
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> pod/metasploit-development-environment
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> 4.11.2_release_pre-rails4
=======
  # that will decode and execute it on the fly.
>>>>>>> msf-complex-payloads
=======
  # that will decode and execute it on the fly.
>>>>>>> msf-complex-payloads
=======
  # that will decode and execute it on the fly.
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
  # that will decode and execute it on the fly.
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
>>>>>>> metasploit-api/_index.html
=======
  # that will decode and execute it on the fly.
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
>>>>>>> origin/pod/metasploit-framework
>>>>>>> pod/metasploit-development-environment
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
=======
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
  # that will decode and execute it on the fly.
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
  # that will decode and execute it on the fly.
>>>>>>> metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-framework
=======
  # that will decode and execute it on the fly.
>>>>>>> pod/metasploit-development-environment
=======
  # that will decode and execute it on the fly. The code will be condensed to
  # one line and compatible with all Python versions supported by the Python
  # Meterpreter stage.
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> master
=======
=======
>>>>>>> pod/metasploit-development-environment
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
>>>>>>> pod/metasploit-development-environment
  #
  # @param cmd [String] The python code to execute.
  # @return [String] Full python stub to execute the command.
  #
  def py_create_exec_stub(cmd)
    # Base64 encoding is required in order to handle Python's formatting
    # requirements in the while loop
    b64_stub  = "import base64,sys;exec(base64.b64decode("
    b64_stub << "{2:str,3:lambda b:bytes(b,'UTF-8')}[sys.version_info[0]]('"
    b64_stub << Rex::Text.encode_base64(cmd)
    b64_stub << "')))"
    b64_stub
  end

end
