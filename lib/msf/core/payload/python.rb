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
=======
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
>>>>>>> metasploit-api/_index.html
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
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
  # that will decode and execute it on the fly. The code will be condensed to
  # one line and compatible with all Python versions supported by the Python
  # Meterpreter stage.
=======
  # that will decode and execute it on the fly.
<<<<<<< HEAD
=======
<<<<<<< HEAD
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
>>>>>>> metasploit-api/_index.html
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
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
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
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
<<<<<<< HEAD
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
=======
<<<<<<< HEAD
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
  # that will decode and execute it on the fly.
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
>>>>>>> metasploit-api/_index.html
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # that will decode and execute it on the fly.
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
  # that will decode and execute it on the fly.
>>>>>>> metasploit-api/_index.html
=======
  # that will decode and execute it on the fly. The code will be condensed to
  # one line and compatible with all Python versions supported by the Python
  # Meterpreter stage.
<<<<<<< HEAD
>>>>>>> master
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  # that will decode and execute it on the fly.
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
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
