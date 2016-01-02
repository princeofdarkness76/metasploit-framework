# coding: utf-8

# During build, the Gemfile is temporarily moved and
# we must manually define the project root
if ENV['MSF_ROOT']
  lib = File.realpath(File.expand_path('lib', ENV['MSF_ROOT']))
else
  # have to use realpath as metasploit-framework is often loaded through a symlink and tools like Coverage and debuggers
  # require realpaths.
  lib = File.realpath(File.expand_path('../lib', __FILE__))
end

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metasploit/framework/version'
require 'metasploit/framework/rails_version_constraint'

Gem::Specification.new do |spec|
  spec.name          = 'metasploit-framework'
  spec.version       = Metasploit::Framework::GEM_VERSION
  spec.authors       = ['Metasploit Hackers']
  spec.email         = ['metasploit-hackers@lists.sourceforge.net']
  spec.summary       = 'metasploit-framework'
  spec.description   = 'metasploit-framework'
  spec.homepage      = 'https://www.metasploit.com'
  spec.license       = 'BSD-3-clause'

  spec.files         = `git ls-files`.split($/).reject { |file|
    file =~ /^documentation|^data\/gui|^external/
  }
  spec.bindir = '.'
  if ENV['CREATE_BINSTUBS']
    spec.executables   = [
      'msfbinscan',
      'msfconsole',
      'msfd',
      'msfelfscan',
      'msfmachscan',
      'msfpescan',
      'msfrop',
      'msfrpc',
      'msfrpcd',
      'msfupdate',
      'msfvenom'
    ]
  end
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  # Database support
  spec.add_runtime_dependency 'activerecord', *Metasploit::Framework::RailsVersionConstraint::RAILS_VERSION
  # Need 3+ for ActiveSupport::Concern
  spec.add_runtime_dependency 'activesupport', *Metasploit::Framework::RailsVersionConstraint::RAILS_VERSION
  # Needed for config.action_view for view plugin compatibility for Pro
  spec.add_runtime_dependency 'actionpack', *Metasploit::Framework::RailsVersionConstraint::RAILS_VERSION
  # Needed for some admin modules (cfme_manageiq_evm_pass_reset.rb)
  spec.add_runtime_dependency 'bcrypt'
  # Needed for actors instead of Threads
  spec.add_runtime_dependency 'celluloid'
  # Needed for Javascript obfuscation
  spec.add_runtime_dependency 'jsobfu', '~> 0.3.0'
  # Needed for some admin modules (scrutinizer_add_user.rb)
  spec.add_runtime_dependency 'json'
  # Metasm compiler/decompiler/assembler
  spec.add_runtime_dependency 'metasm', '~> 1.0.2'
  # Metasploit::Concern hooks
<<<<<<< HEAD
  spec.add_runtime_dependency 'metasploit-concern', '~> 1.0.0'
=======
<<<<<<< HEAD
<<<<<<< HEAD
  spec.add_runtime_dependency 'metasploit-concern', '~> 1.0.0'
  # Metasploit::Credential database models
  spec.add_runtime_dependency 'metasploit-credential', '~> 1.0.1'
  # Database models shared between framework and Pro.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/payload-generator.rb
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/pod/metasploit-gemfile-
=======
  spec.add_runtime_dependency 'metasploit_data_models', '~> 1.2.9'
>>>>>>> rapid7/twiddle-wakka-metasploit-deps
  # Things that would normally be part of the database model, but which
  # are needed when there's no database
  spec.add_runtime_dependency 'metasploit-model', '~> 1.0.0'
  # Needed for Meterpreter
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
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/payload-generator.rb
=======
<<<<<<< HEAD
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
>>>>>>> origin/pod/metasploit-windows.rb
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.19'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.19'
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
  spec.add_runtime_dependency 'metasploit-concern', '1.0.0'
>>>>>>> pod/metasploit-development-environment
  # Metasploit::Credential database models
  spec.add_runtime_dependency 'metasploit-credential', '~> 1.0.1'
  # Database models shared between framework and Pro.
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
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/payload-generator.rb
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> origin/pod/metasploit-gemfile-
=======
  spec.add_runtime_dependency 'metasploit_data_models', '~> 1.2.9'
>>>>>>> rapid7/twiddle-wakka-metasploit-deps
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.10'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit_data_models', '1.2.9'
>>>>>>> pod/metasploit-development-environment
  # Things that would normally be part of the database model, but which
  # are needed when there's no database
  spec.add_runtime_dependency 'metasploit-model', '~> 1.0.0'
  # Needed for Meterpreter
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
<<<<<<< HEAD
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/4.11.2_release_pre-rails4
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/payload-generator.rb
=======
<<<<<<< HEAD
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
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.19'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> msf-complex-payloads
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
<<<<<<< HEAD
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-framework
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.19'
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> metasploit-api/_index.html
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.21'
>>>>>>> rapid7/master
=======
  spec.add_runtime_dependency 'metasploit-payloads', '1.0.17'
<<<<<<< HEAD
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
>>>>>>> pod/metasploit-development-environment
  # Needed by msfgui and other rpc components
  spec.add_runtime_dependency 'msgpack'
  # get list of network interfaces, like eth* from OS.
  spec.add_runtime_dependency 'network_interface', '~> 0.0.1'
  # Needed by anemone crawler
  spec.add_runtime_dependency 'nokogiri'
  # Needed by db.rb and Msf::Exploit::Capture
  spec.add_runtime_dependency 'packetfu', '1.1.11'
  # For sniffer and raw socket modules
  spec.add_runtime_dependency 'pcaprub'
  # Needed for module caching in Mdm::ModuleDetails
  spec.add_runtime_dependency 'pg', '>= 0.11'
  # Run initializers for metasploit-concern, metasploit-credential, metasploit_data_models Rails::Engines
  spec.add_runtime_dependency 'railties'
  # required for OS fingerprinting
  spec.add_runtime_dependency 'recog', '2.0.14'
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> pod/metasploit-inject.vcxproj.filters-master_0
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
>>>>>>> master
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-development-environment
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
=======
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
<<<<<<< HEAD
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
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
=======
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> pod/metasploit-development-environment
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
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
=======
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
  # required for bitlocker fvek extraction
  spec.add_runtime_dependency 'openssl-ccm', '1.2.1'
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> pod/metasploit-development-environment
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> metasploit-api/_index.html
=======
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
>>>>>>> pod/metasploit-development-environment

  # rb-readline doesn't work with Ruby Installer due to error with Fiddle:
  #   NoMethodError undefined method `dlopen' for Fiddle:Module
  unless Gem.win_platform?
    # Command line editing, history, and tab completion in msfconsole
    # Use the Rapid7 fork until the official gem catches up
    spec.add_runtime_dependency 'rb-readline-r7'
  end

  # Needed by anemone crawler
  spec.add_runtime_dependency 'robots'
  # Needed by some modules
  spec.add_runtime_dependency 'rubyzip', '~> 1.1'
  # Needed for some post modules
  spec.add_runtime_dependency 'sqlite3'
  # required for Time::TZInfo in ActiveSupport
  spec.add_runtime_dependency 'tzinfo'
  # Needed so that disk size output isn't horrible
  spec.add_runtime_dependency 'filesize'
end
