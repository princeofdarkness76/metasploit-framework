# -*- coding:binary -*-
require 'spec_helper'
require 'msf/core'

def decompress(code)
  Rex::Powershell::Script.new(code).decompress_code
end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
RSpec.describe Rex::Powershell::Command do
=======
describe Rex::Powershell::Command do
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
describe Rex::Powershell::Command do
>>>>>>> origin/msf-complex-payloads
=======
describe Rex::Powershell::Command do
>>>>>>> origin/msf-complex-payloads
=======
describe Rex::Powershell::Command do
>>>>>>> origin/payload-generator.rb
=======
describe Rex::Powershell::Command do
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
describe Rex::Powershell::Command do
>>>>>>> origin/pod/metasploit-gemfile-
=======
describe Rex::Powershell::Command do
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
  let(:example_script) do
    File.join(Msf::Config.data_directory, "exploits", "powershell", "powerdump.ps1")
  end

  let(:payload) do
    Rex::Text.rand_text_alpha(120)
  end

  let(:arch) do
    'x86'
  end

  describe "::encode_script" do
    it 'should read and encode a sample script file' do
      script = subject.encode_script(example_script)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      expect(script).to be
      expect(script.length).to be > 0
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/msf-complex-payloads
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/msf-complex-payloads
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/payload-generator.rb
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/pod/metasploit-gemfile-
=======
      script.should be
      script.length.should be > 0
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
    end
  end

  describe "::compress_script" do
    context 'with default options' do
      it 'should create a compressed script' do
        script = File.read(example_script)
        compressed = subject.compress_script(script)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(compressed.length).to be < script.length
        expect(compressed.include?('IO.Compression')).to be_truthy
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        compressed.length.should be < script.length
        compressed.include?('IO.Compression').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end

      it 'should create a compressed script with eof' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, 'end_of_file')
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(compressed.include?('end_of_file')).to be_truthy
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        compressed.include?('end_of_file').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when strip_comments is true' do
      it 'should strip comments' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, strip_comments: true)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(compressed.length).to be < script.length
=======
        compressed.length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        compressed.length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
>>>>>>> origin/payload-generator.rb
=======
        compressed.length.should be < script.length
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        compressed.length.should be < script.length
>>>>>>> origin/pod/metasploit-gemfile-
=======
        compressed.length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end
    context 'when strip_comment is false' do
      it 'shouldnt strip comments' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, strip_comments: false)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(compressed.length).to be < script.length
=======
        compressed.length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        compressed.length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        compressed.length.should be < script.length
>>>>>>> origin/payload-generator.rb
=======
        compressed.length.should be < script.length
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        compressed.length.should be < script.length
>>>>>>> origin/pod/metasploit-gemfile-
=======
        compressed.length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when strip_whitespace is true' do
      it 'should strip whitespace' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, strip_comments: false, strip_whitespace: true)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(compressed).length).to be < script.length
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/payload-generator.rb
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(compressed).length.should be < script.length
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when strip_whitespace is false' do
      it 'shouldnt strip whitespace' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, strip_comments: false, strip_whitespace: false)
        expect(decompress(compressed).length).to eq(script.length)
      end
    end

    context 'when sub_vars is true' do
      it 'should substitute variables' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, sub_vars: true)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(compressed).include?('$hashes')).to be_falsey
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(compressed).include?('$hashes').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when sub_vars is false' do
      it 'shouldnt substitute variables' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, sub_vars: false)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(compressed).include?('$hashes')).to be_truthy
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(compressed).include?('$hashes').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when sub_funcs is true' do
      it 'should substitute functions' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, sub_funcs: true)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(compressed).include?('DumpHashes')).to be_falsey
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(compressed).include?('DumpHashes').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when sub_funcs is false' do
      it 'shouldnt substitute variables' do
        script = File.read(example_script)
        compressed = subject.compress_script(script, nil, sub_funcs: false)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(compressed).include?('DumpHashes')).to be_truthy
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(compressed).include?('DumpHashes').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end
  end

  describe "::run_hidden_psh" do
    let(:encoded) do
      false
    end

    context 'when x86 payload' do
      it 'should generate code' do
        code = subject.run_hidden_psh(payload, arch, encoded)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('syswow64')).to be_truthy
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('syswow64').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when x64 payload' do
      it 'should generate code'  do
        code = subject.run_hidden_psh(payload, 'x86_64', encoded)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('sysnative')).to be_truthy
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('sysnative').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when encoded' do
      it 'should generate a code including an encoded command' do
        code = subject.run_hidden_psh(payload, arch, true)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('-nop -w hidden -e ')).to be_truthy
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('-nop -w hidden -e ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when command' do
      it 'should generate code including a -c command' do
        code = subject.run_hidden_psh(payload, arch, encoded)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('-nop -w hidden -c ')).to be_truthy
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('-nop -w hidden -c ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when old' do
      it 'should generate a code including unshorted args' do
        code = subject.run_hidden_psh(payload, arch, encoded, method: 'old')
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ')).to be_truthy
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end
  end

  describe "::cmd_psh_payload" do
    let(:template_path) do
      File.join(Msf::Config.data_directory,
                "templates",
                "scripts")
    end

    let(:psh_method) do
      'reflection'
    end

    context 'when payload is huge' do
      it 'should raise an exception' do
        except = false
        begin
          code = subject.cmd_psh_payload(Rex::Text.rand_text_alpha(12000), arch, template_path, method: psh_method)
        rescue RuntimeError => e
          except = true
        end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(except).to be_truthy
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when persist is true' do
      it 'should add a persistance loop' do
        code = subject.cmd_psh_payload(payload, arch, template_path, persist: true, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('while(1){Start-Sleep -s ')).to be_truthy
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when persist is false' do
      it 'shouldnt add a persistance loop' do
        code = subject.cmd_psh_payload(payload, arch, template_path, persist: false, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('while(1){Start-Sleep -s ')).to be_falsey
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('while(1){Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when prepend_sleep is set' do
      it 'should prepend sleep' do
        code = subject.cmd_psh_payload(payload, arch, template_path, prepend_sleep: 5, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('Start-Sleep -s ')).to be_truthy
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('Start-Sleep -s ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when prepend_sleep isnt set' do
      it 'shouldnt prepend sleep' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('Start-Sleep -s ')).to be_falsey
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when prepend_sleep is 0' do
      it 'shouldnt prepend sleep' do
        code = subject.cmd_psh_payload(payload, arch, template_path, prepend_sleep: 0, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('Start-Sleep -s ')).to be_falsey
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('Start-Sleep -s ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when method is old' do
      it 'should generate a command line' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'old')
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('-namespace Win32Functions')).to be_truthy
      end
      it 'shouldnt shorten args' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'old')
        expect(code.include?('-NoProfile -WindowStyle hidden -Command')).to be_truthy
      end
      it 'should include -NoExit' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'old')
        expect(code.include?('-NoProfile -WindowStyle hidden -NoExit -Command')).to be_truthy
=======
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        decompress(code).include?('-namespace Win32Functions').should be_truthy
      end
      it 'shouldnt shorten args' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'old')
        code.include?('-NoProfile -WindowStyle hidden -Command').should be_truthy
      end
      it 'should include -NoExit' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'old')
        code.include?('-NoProfile -WindowStyle hidden -NoExit -Command').should be_truthy
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when method is net' do
      it 'should generate a command line' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'net')
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('System.Runtime.InteropServices;')).to be_truthy
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('System.Runtime.InteropServices;').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when method is reflection' do
      it 'should generate a command line' do
        code = subject.cmd_psh_payload(payload, arch, template_path, method: 'reflection')
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(decompress(code).include?('GlobalAssemblyCache')).to be_truthy
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        decompress(code).include?('GlobalAssemblyCache').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when method is msil' do
      it 'should raise an exception' do
        except = false
        begin
          subject.cmd_psh_payload(payload, arch, template_path, method: 'msil')
        rescue RuntimeError
          except = true
        end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(except).to be_truthy
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when method is unknown' do
      it 'should raise an exception' do
        except = false
        begin
          subject.cmd_psh_payload(payload, arch, template_path, method: 'blah')
        rescue RuntimeError
          except = true
        end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(except).to be_truthy
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        except.should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        except.should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when encode_inner_payload' do
      it 'should contain an inner payload with -e' do
          code = subject.cmd_psh_payload(payload, arch, template_path, encode_inner_payload: true, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(code.include?(' -e ')).to be_truthy
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
          code.include?(' -e ').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end

      context 'when no_equals is true' do
        it 'should raise an exception' do
          except = false
          begin
            code = subject.cmd_psh_payload(payload, arch, template_path, encode_inner_payload: true, no_equals: true, method: psh_method)
          rescue RuntimeError
            except = true
          end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(except).to be_truthy
=======
          except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
          except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          except.should be_truthy
>>>>>>> origin/payload-generator.rb
=======
          except.should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
          except.should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
          except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        end
      end
    end

    context 'when encode_final_payload' do
      context 'when no_equals is false' do
        it 'should contain a final payload with -e' do
          code = subject.cmd_psh_payload(payload, arch, template_path, encode_final_payload: true, no_equals: false, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(code.include?(' -e ')).to be_truthy
          expect(code.include?(' -c ')).to be_falsey
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        end
      end
      context 'when no_equals is true' do
        it 'should contain a final payload with -e' do
          code = subject.cmd_psh_payload(payload, arch, template_path, encode_final_payload: true, no_equals: true, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(code.include?(' -e ')).to be_truthy
          expect(code.include?(' -c ')).to be_falsey
          expect(code.include?('=')).to be_falsey
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
          code.include?(' -e ').should be_truthy
          code.include?(' -c ').should be_falsey
          code.include?('=').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        end
      end
      context 'when encode_inner_payload is true' do
        it 'should raise an exception' do
          except = false
          begin
            subject.cmd_psh_payload(payload, arch, template_path, encode_final_payload: true, encode_inner_payload: true, method: psh_method)
          rescue RuntimeError
            except = true
          end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(except).to be_truthy
=======
          except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
          except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          except.should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
          except.should be_truthy
>>>>>>> origin/payload-generator.rb
=======
          except.should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
          except.should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
          except.should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        end
      end
    end

    context 'when remove_comspec' do
      it 'shouldnt contain %COMSPEC%' do
        code = subject.cmd_psh_payload(payload, arch, template_path, remove_comspec: true, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?('%COMSPEC%')).to be_falsey
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/msf-complex-payloads
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/payload-generator.rb
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?('%COMSPEC%').should be_falsey
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end

    context 'when use single quotes' do
      it 'should wrap in single quotes' do
        code = subject.cmd_psh_payload(payload, arch, template_path, use_single_quotes: true, method: psh_method)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        expect(code.include?(' -c \'')).to be_truthy
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/payload-generator.rb
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
        code.include?(' -c \'').should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      end
    end
  end

  describe "::generate_psh_command_line" do
    it 'should contain no full stop when :no_full_stop' do
      opts = {:no_full_stop => true}
      command = subject.generate_psh_command_line(opts)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      expect(command.include?("powershell ")).to be_truthy
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/msf-complex-payloads
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/payload-generator.rb
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/pod/metasploit-gemfile-
=======
      command.include?("powershell ").should be_truthy
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
    end

    it 'should contain full stop unless :no_full_stop' do
      opts = {}
      command = subject.generate_psh_command_line(opts)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      expect(command.include?("powershell.exe ")).to be_truthy

      opts = {:no_full_stop => false}
      command = subject.generate_psh_command_line(opts)
      expect(command.include?("powershell.exe ")).to be_truthy
=======
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      command.include?("powershell.exe ").should be_truthy

      opts = {:no_full_stop => false}
      command = subject.generate_psh_command_line(opts)
      command.include?("powershell.exe ").should be_truthy
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
    end

    it 'should ensure the path should always ends with \\' do
      opts = {:path => "test"}
      command = subject.generate_psh_command_line(opts)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      expect(command.include?("test\\powershell.exe ")).to be_truthy

      opts = {:path => "test\\"}
      command = subject.generate_psh_command_line(opts)
      expect(command.include?("test\\powershell.exe ")).to be_truthy
=======
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
      command.include?("test\\powershell.exe ").should be_truthy

      opts = {:path => "test\\"}
      command = subject.generate_psh_command_line(opts)
      command.include?("test\\powershell.exe ").should be_truthy
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
    end
  end

  describe "::generate_psh_args" do
    it 'should return empty string for nil opts' do
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      expect(subject.generate_psh_args(nil)).to eql ""
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/msf-complex-payloads
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/msf-complex-payloads
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/payload-generator.rb
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/pod/metasploit-gemfile-
=======
      subject.generate_psh_args(nil).should eql ""
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
    end

    command_args = [[:encodedcommand, "parp"],
                    [:executionpolicy, "bypass"],
                    [:inputformat, "xml"],
                    [:file, "x"],
                    [:noexit, true],
                    [:nologo, true],
                    [:noninteractive, true],
                    [:mta, true],
                    [:outputformat, 'xml'],
                    [:sta, true],
                    [:noprofile, true],
                    [:windowstyle, "hidden"],
                    [:command, "Z"]
    ]

    permutations = (0..command_args.length).to_a.combination(2).map{|i,j| command_args[i...j]}

    permutations.each do |perms|
      opts = {}
      perms.each do |k,v|
        opts[k] = v
        it "should generate correct arguments for #{opts}" do
          opts[:shorten] = true
          short_args = subject.generate_psh_args(opts)
          opts[:shorten] = false
          long_args = subject.generate_psh_args(opts)

          opt_length = opts.length - 1

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          expect(short_args).not_to be_nil
          expect(long_args).not_to be_nil
          expect(short_args.count('-')).to eql opt_length
          expect(long_args.count('-')).to eql opt_length
          expect(short_args[0]).not_to eql " "
          expect(long_args[0]).not_to eql " "
          expect(short_args[-1]).not_to eql " "
          expect(long_args[-1]).not_to eql " "

          if opts[:command]
            expect(long_args[-10..-1]).to eql "-Command Z"
            expect(short_args[-4..-1]).to eql "-c Z"
=======
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
          short_args.should_not be_nil
          long_args.should_not be_nil
          short_args.count('-').should eql opt_length
          long_args.count('-').should eql opt_length
          short_args[0].should_not eql " "
          long_args[0].should_not eql " "
          short_args[-1].should_not eql " "
          long_args[-1].should_not eql " "

          if opts[:command]
            long_args[-10..-1].should eql "-Command Z"
            short_args[-4..-1].should eql "-c Z"
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
          end
       end
      end
    end
  end

end

