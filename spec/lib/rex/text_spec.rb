# -*- coding: binary -*-
require 'rex/text'

RSpec.describe Rex::Text do
  context "Class methods" do

    context ".to_ebcdic" do
      it "should convert ASCII to EBCDIC (both US standards)" do
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
        expect(described_class.to_ebcdic("Hello, World!")).to eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.to_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
=======
=======
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
        described_class.to_ebcdic("Hello, World!").should eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        lambda {described_class.to_ebcdic("\xff\xfe")}.should raise_exception(described_class::IllegalSequence)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.to_ebcdic("Hello, World!")).to eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.to_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.to_ebcdic("Hello, World!")).to eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.to_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.to_ebcdic("Hello, World!")).to eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.to_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.to_ebcdic("Hello, World!")).to eq("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.to_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
      end
    end

    context ".from_ebcdic" do
      it "should convert EBCDIC to ASCII (both US standards)" do
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
        expect(described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")).to eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.from_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
=======
=======
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
        described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a").should eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        lambda {described_class.from_ebcdic("\xff\xfe")}.should raise_exception(described_class::IllegalSequence)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")).to eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.from_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")).to eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.from_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")).to eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.from_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
=======
        expect(described_class.from_ebcdic("\xc8\x85\x93\x93\x96\x6b\x40\xe6\x96\x99\x93\x84\x5a")).to eq("Hello, World!")
      end
      it "should raise on non-convertable characters" do
        expect(lambda {described_class.from_ebcdic("\xff\xfe")}).to raise_exception(described_class::IllegalSequence)
>>>>>>> rapid7/master
      end
    end

    context ".to_ibm1047" do
      it "should convert ASCII to mainfram EBCDIC (cp1047)" do
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
        expect(
          described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/payload-generator.rb
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(
          described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> rapid7/master
=======
        expect(
          described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> rapid7/master
=======
        expect(
          described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> rapid7/master
=======
        expect(
          described_class.to_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq("_\xAD\xBDM]\xC0\xD0lZ[{\xF1\xF2\xF3\xF4\xF5\xF6\xF7\xF8\xF9\xF0\x81\x82\x83\x84\x85}\x7Fy\xA1")
>>>>>>> rapid7/master
      end
    end

    context ".from_1047" do
      it "should convert mainframe EBCDIC (cp1047) to ASCII (ISO-8859-1)" do
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
        expect(
          described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/payload-generator.rb
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~]).should
        eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(
          described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> rapid7/master
=======
        expect(
          described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> rapid7/master
=======
        expect(
          described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> rapid7/master
=======
        expect(
          described_class.from_ibm1047(%q[^[](){}%!$#1234567890abcde'"`~])
        ).to eq(";$)\x88\x89#'\x85\x81\x84\x83\x91\x16\x93\x94\x95\x96\x04\x98\x99\x90/\xC2\xC4\xC0\xC1\e\x82-=")
>>>>>>> rapid7/master
      end
    end

    context ".to_utf8" do
      it "should convert a string to UTF-8, skipping badchars" do
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
        expect(described_class.to_utf8("Hello, world!")).to eq("Hello, world!")
        expect(described_class.to_utf8("Oh no, \xff\xfe can't convert!")).to eq("Oh no,  can't convert!")
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/msf-complex-payloads
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/payload-generator.rb
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.to_utf8("Hello, world!").should eq("Hello, world!")
        described_class.to_utf8("Oh no, \xff\xfe can't convert!").should eq("Oh no,  can't convert!")
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.to_utf8("Hello, world!")).to eq("Hello, world!")
        expect(described_class.to_utf8("Oh no, \xff\xfe can't convert!")).to eq("Oh no,  can't convert!")
>>>>>>> rapid7/master
=======
        expect(described_class.to_utf8("Hello, world!")).to eq("Hello, world!")
        expect(described_class.to_utf8("Oh no, \xff\xfe can't convert!")).to eq("Oh no,  can't convert!")
>>>>>>> rapid7/master
=======
        expect(described_class.to_utf8("Hello, world!")).to eq("Hello, world!")
        expect(described_class.to_utf8("Oh no, \xff\xfe can't convert!")).to eq("Oh no,  can't convert!")
>>>>>>> rapid7/master
=======
        expect(described_class.to_utf8("Hello, world!")).to eq("Hello, world!")
        expect(described_class.to_utf8("Oh no, \xff\xfe can't convert!")).to eq("Oh no,  can't convert!")
>>>>>>> rapid7/master
      end
    end

    context ".to_octal" do
      it "should convert all chars 00 through ff" do
        expect(described_class.to_octal("\x7f"*100)).to eq("\\177"*100)

        all_chars = (0..0xff).map {|c| [c].pack("C") }.join
        all_octal = (0..0xff).map {|c| "\\%o"%(c) }.join
        expect(described_class.to_octal(all_chars)).to eq(all_octal)
      end
      it "should use the given prefix" do
        expect(described_class.to_octal("\x7f"*100, "foo")).to eq("foo177"*100)

        all_chars = (0..0xff).map {|c| [c].pack("C") }.join
        all_octal = (0..0xff).map {|c| "test%o"%(c) }.join
        expect(described_class.to_octal(all_chars, "test")).to eq(all_octal)
      end
    end

    context ".to_hex" do
      it "should convert all chars 00 through ff" do
        expect(described_class.to_hex("\x7f"*100)).to eq("\\x7f"*100)

        all_chars = (0..0xff).map {|c| [c].pack("C") }.join
        all_hex = (0..0xff).map {|c| "\\x%02x"%(c) }.join
        expect(described_class.to_hex(all_chars)).to eq(all_hex)
      end
      it "should use the given prefix" do
        expect(described_class.to_hex("\x7f"*100, "foo")).to eq("foo7f"*100)

        all_chars = (0..0xff).map {|c| [c].pack("C") }.join
        all_hex = (0..0xff).map {|c| "test%02x"%(c) }.join
        expect(described_class.to_hex(all_chars, "test")).to eq(all_hex)
      end
    end

    context ".to_hex_ascii" do
      it "should handle non-printables" do
        non_print = (0x7f..0xff).map {|c| [c].pack("C") }.join
        non_print_hex = (0x7f..0xff).map {|c| "\\x%02x"%(c) }.join
        expect(described_class.to_hex_ascii(non_print)).to eq(non_print_hex)

        expect(described_class.to_hex_ascii("\x00")).to eq("\\x00")
        expect(described_class.to_hex_ascii("\x1f")).to eq("\\x1f")
        expect(described_class.to_hex_ascii("\x00"*100)).to eq("\\x00"*100)
      end
      it "should not mess with printables" do
        expect(described_class.to_hex_ascii("A")).to eq("A")
        expect(described_class.to_hex_ascii("A\x7f")).to eq("A\\x7f")
      end
    end

    context ".gzip" do
      it "should return a properly formatted gzip file" do
        str = described_class.gzip("hi mom")
        expect(str[0,4]).to eq("\x1f\x8b\x08\x00") # Gzip magic
        # bytes 4 through 9 are a time stamp
        expect(str[10..-1]).to eq("\xcb\xc8\x54\xc8\xcd\xcf\x05\x00\x68\xa4\x1c\xf0\x06\x00\x00\x00")
      end
    end

    context ".ungzip" do
      it "should return an uncompressed string" do
        gzip  = "\x1f\x8b\x08\x00"
        gzip << "\x00" * 6
        gzip << "\xcb\xc8\x54\xc8\xcd\xcf\x05\x00\x68\xa4\x1c\xf0\x06\x00\x00\x00"
        expect(described_class.ungzip(gzip)).to eq("hi mom")
      end
    end

    context ".rand_surname" do
      it "should return a random surname" do
        expect(described_class::Surnames).to include(described_class.rand_surname)
      end
    end

    context ".rand_name" do
      it "should return a random name" do
        names = described_class::Names_Female + described_class::Names_Male
        expect(names).to include(described_class.rand_name)
      end
    end

    context ".rand_name_female" do
      it "should return a random female name" do
        expect(described_class::Names_Female).to include(described_class.rand_name_female)
      end
    end

    context ".rand_name_male" do
      it "should return a random male name" do
        expect(described_class::Names_Male).to include(described_class.rand_name_male)
      end
    end

    context ".rand_mail_address" do
      it "should return a random mail address" do
        names = described_class::Names_Female + described_class::Names_Male
        surnames = described_class::Surnames
        tlds = described_class::TLDs

        # XXX: This is kinda dirty
        mail_address = described_class.rand_mail_address.split("@").map { |x| x.split(".") }
        name, surname = mail_address.first.first, mail_address.first.last
        domain, tld = "example", mail_address.last.last # Poor man's stubbing to preserve TLD

        expect(names).to include(name)
        expect(surnames).to include(surname)
        expect(domain).to eq("example")
        expect(tlds).to include(tld)
      end
    end

    context ".randomize_space" do
      let (:sample_text) { "The quick brown sploit jumped over the lazy A/V" }
      let (:spaced_text) { described_class.randomize_space(sample_text) }
      it "should return a string with at least one new space characater" do
        expect(spaced_text).to match /[\x09\x0d\x0a]/
      end

      it "should not otherwise be mangled" do
        normalized_text = spaced_text.gsub(/[\x20\x09\x0d\x0a]+/m, " ")
        expect(normalized_text).to eq(sample_text)
      end
    end

    context ".cowsay" do

      def moo(num)
        (%w(moo) * num).join(' ')
      end

      it "should cowsay single lines correctly" do
        cowsaid = <<EOCOW
 _____________________
< moo moo moo moo moo >
 ---------------------
       \\   ,__,
        \\  (oo)____
           (__)    )\\
              ||--|| *
EOCOW
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
        expect(described_class.cowsay(moo(5))).to eq(cowsaid)
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/payload-generator.rb
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.cowsay(moo(5)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.cowsay(moo(5))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(5))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(5))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(5))).to eq(cowsaid)
>>>>>>> rapid7/master
      end

      it "should cowsay two lines correctly" do
        cowsaid = <<EOCOW
 _____________________________________
/ moo moo moo moo moo moo moo moo moo \\
\\  moo moo moo moo moo moo            /
 -------------------------------------
       \\   ,__,
        \\  (oo)____
           (__)    )\\
              ||--|| *
EOCOW
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
        expect(described_class.cowsay(moo(15))).to eq(cowsaid)
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/payload-generator.rb
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.cowsay(moo(15)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.cowsay(moo(15))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(15))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(15))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(15))).to eq(cowsaid)
>>>>>>> rapid7/master
      end

      it "should cowsay three+ lines correctly" do
        cowsaid = <<EOCOW
 _____________________________________
/ moo moo moo moo moo moo moo moo moo \\
|  moo moo moo moo moo moo moo moo mo |
| o moo moo moo moo moo moo moo moo m |
\\ oo moo moo moo                      /
 -------------------------------------
       \\   ,__,
        \\  (oo)____
           (__)    )\\
              ||--|| *
EOCOW
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
        expect(described_class.cowsay(moo(30))).to eq(cowsaid)
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/msf-complex-payloads
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/payload-generator.rb
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        described_class.cowsay(moo(30)).should eq(cowsaid)
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(described_class.cowsay(moo(30))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(30))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(30))).to eq(cowsaid)
>>>>>>> rapid7/master
=======
        expect(described_class.cowsay(moo(30))).to eq(cowsaid)
>>>>>>> rapid7/master
      end

      it "should respect the wrap" do
        wrap = 40 + rand(100)
        cowsaid = described_class.cowsay(moo(1000), wrap)
        max_len = cowsaid.split(/\n/).map(&:length).sort.last
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
        expect(max_len).to eq(wrap)
=======
        max_len.should eq(wrap)
>>>>>>> origin/4.11.2_release_pre-rails4
=======
        max_len.should eq(wrap)
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
        max_len.should eq(wrap)
>>>>>>> origin/msf-complex-payloads
=======
        max_len.should eq(wrap)
>>>>>>> origin/msf-complex-payloads
=======
        max_len.should eq(wrap)
>>>>>>> origin/payload-generator.rb
=======
        max_len.should eq(wrap)
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
        max_len.should eq(wrap)
>>>>>>> origin/pod/metasploit-gemfile-
=======
        expect(max_len).to eq(wrap)
>>>>>>> rapid7/master
=======
        expect(max_len).to eq(wrap)
>>>>>>> rapid7/master
=======
        expect(max_len).to eq(wrap)
>>>>>>> rapid7/master
=======
        expect(max_len).to eq(wrap)
>>>>>>> rapid7/master
      end
    end
  end
end
