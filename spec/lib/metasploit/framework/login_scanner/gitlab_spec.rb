require 'spec_helper'
require 'metasploit/framework/login_scanner/gitlab'

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
>>>>>>> pod/metasploit-development-environment
RSpec.describe Metasploit::Framework::LoginScanner::GitLab do
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/msf-complex-payloads
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/msf-complex-payloads
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/payload-generator.rb
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/pod/metasploit-gemfile-
=======
<<<<<<< HEAD
RSpec.describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> rapid7/master
=======
RSpec.describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> rapid7/master
=======
RSpec.describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> rapid7/master
=======
RSpec.describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> rapid7/master
=======
describe Metasploit::Framework::LoginScanner::GitLab do
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
>>>>>>> pod/metasploit-development-environment

    it_behaves_like 'Metasploit::Framework::LoginScanner::Base',  has_realm_key: true, has_default_realm: false
    it_behaves_like 'Metasploit::Framework::LoginScanner::RexSocket'
    it_behaves_like 'Metasploit::Framework::LoginScanner::HTTP'

end
