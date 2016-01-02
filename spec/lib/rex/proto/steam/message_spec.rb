# -*- coding: binary -*-
require 'spec_helper'
require 'rex/proto/steam/message'

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
RSpec.describe Rex::Proto::Steam do
=======
describe Rex::Proto::Steam do
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
describe Rex::Proto::Steam do
>>>>>>> origin/msf-complex-payloads
=======
describe Rex::Proto::Steam do
>>>>>>> origin/msf-complex-payloads
=======
describe Rex::Proto::Steam do
>>>>>>> origin/payload-generator.rb
=======
describe Rex::Proto::Steam do
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
describe Rex::Proto::Steam do
>>>>>>> origin/pod/metasploit-gemfile-
=======
RSpec.describe Rex::Proto::Steam do
>>>>>>> rapid7/master
=======
RSpec.describe Rex::Proto::Steam do
>>>>>>> rapid7/master
=======
RSpec.describe Rex::Proto::Steam do
>>>>>>> rapid7/master
=======
RSpec.describe Rex::Proto::Steam do
>>>>>>> rapid7/master
  subject(:steam) do
    mod = Module.new
    mod.extend described_class
    mod
  end

  describe '#encode_message' do
    it 'properly encodes messages' do
      message = steam.encode_message('T', 'Test')
      expect(message).to eq("\xFF\xFF\xFF\xFF\x54Test")
    end
  end

  describe '#decode_message' do
    it 'does not decode overly short messages' do
      expect(steam.decode_message('foo')).to eq(nil)
    end

    it 'does not decode unknown messages' do
      expect(steam.decode_message("\xFF\xFF\xFF\x01blahblahblah")).to eq(nil)
    end

    it 'properly decodes valid messages' do
      type, message = steam.decode_message("\xFF\xFF\xFF\xFF\x54Test")
      expect(type).to eq(0x54)
      expect(message).to eq('Test')
    end
  end

  describe '#a2s_info_decode' do
    it 'extracts a2s_info fields properly' do
      expected_info = {
        version: 17, name: "-=THE BATTLEGROUNDS *HARDCORE*=-", map: "aoc_battleground",
        folder: "ageofchivalry", game_name: "Age of Chivalry", game_id: 17510,
        players: "22/32", bots: 0, game_version: "1.0.0.6", type: "Dedicated",
        environment: "Linux", visibility: "public", VAC: "secured"
      }
      actual_info = steam.a2s_info_decode(IO.read(File.join(File.dirname(__FILE__), 'steam_info.bin')))
      expect(actual_info).to eq(expected_info)
    end
  end
end
