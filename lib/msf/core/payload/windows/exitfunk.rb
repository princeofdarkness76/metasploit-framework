# -*- coding: binary -*-

require 'msf/core'
require 'msf/core/payload/windows'
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
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-windows.rb

module Msf

=======
module Msf


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/feature/complex-payloads
=======
module Msf


>>>>>>> origin/feature/complex-payloads
=======
<<<<<<< HEAD
=======
>>>>>>> origin/msf-complex-payloads
<<<<<<< HEAD
<<<<<<< HEAD
module Msf

=======
<<<<<<< HEAD
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> origin/pod/metasploit-api/_index.html
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> feature/complex-payloads
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb
module Msf

=======

module Msf
>>>>>>> rapid7/master
=======

module Msf
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======

module Msf
>>>>>>> rapid7/master
=======

module Msf
>>>>>>> rapid7/master
=======

module Msf
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb

<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb

module Msf
>>>>>>> rapid7/master
=======

module Msf
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master

<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> master
=======

module Msf
>>>>>>> master
=======

module Msf
>>>>>>> rapid7/master
=======

module Msf
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb

>>>>>>> payload-generator.rb
=======
module Msf


>>>>>>> pod/complex-payloads
<<<<<<< HEAD
=======
=======

module Msf
>>>>>>> origin/pod/metasploit-framework
=======
=======

module Msf
>>>>>>> origin/pod/metasploit-serialized_class_loader
>>>>>>> master
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======

module Msf
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-api/_index.html
=======

module Msf
>>>>>>> rapid7/master

<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> feature/complex-payloads
>>>>>>> origin/pod/metasploit-excellent.mp3
=======

module Msf
>>>>>>> master

>>>>>>> pod/metasploit-gemfile-
=======

module Msf

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

module Msf

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======

module Msf

>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======

module Msf
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======

module Msf
>>>>>>> master
<<<<<<< HEAD
=======

module Msf
>>>>>>> rapid7/master

>>>>>>> origin/pod/metasploit-serialized_class_loader
=======

>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======

module Msf

>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
module Msf


>>>>>>> origin/feature/complex-payloads
=======
module Msf


>>>>>>> rapid7/feature/complex-payloads
###
#
# Implements arbitrary exit routines for Windows ARCH_X86 payloads
#
###

module Payload::Windows::Exitfunk

  def asm_exitfunk(opts={})

    asm = "exitfunk:\n"

    case opts[:exitfunk]

    when 'seh'
      asm << %Q^
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
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> pod/complex-payloads
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/feature/complex-payloads
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['seh']}
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; SetUnhandledExceptionFilter(0)
          push.i8 0
          ret                    ; Return to NULL (crash)
        ^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> rapid7/master
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
<<<<<<< HEAD
=======
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> payload-generator.rb
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['seh'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; SetUnhandledExceptionFilter(0)
        push.i8 0
        ret                    ; Return to NULL (crash)
      ^
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
=======
>>>>>>> origin/feature/complex-payloads
=======
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/feature/complex-payloads
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['seh']}
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; SetUnhandledExceptionFilter(0)
          push.i8 0
          ret                    ; Return to NULL (crash)
        ^
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/feature/complex-payloads
=======
>>>>>>> origin/feature/complex-payloads
=======
<<<<<<< HEAD
=======
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
=======
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
=======
>>>>>>> master
=======
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
<<<<<<< HEAD
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree

    # On Windows Vista, Server 2008, and newer, it is not possible to call ExitThread
    # on WoW64 processes, instead we need to call RtlExitUserThread. This stub will
    # automatically generate the right code depending on the selected exit method.

    when 'thread'
      asm << %Q^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> feature/complex-payloads
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> master
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
=======
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
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
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/feature/complex-payloads
=======
>>>>>>> rapid7/feature/complex-payloads

    # On Windows Vista, Server 2008, and newer, it is not possible to call ExitThread
    # on WoW64 processes, instead we need to call RtlExitUserThread. This stub will
    # automatically generate the right code depending on the selected exit method.

    when 'thread'
      asm << %Q^
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
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
>>>>>>> payload-generator.rb
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> pod/complex-payloads
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/feature/complex-payloads
=======
>>>>>>> rapid7/feature/complex-payloads
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['thread']}
          push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
          call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
          cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
          jl exitfunk_goodbye    ; Then just call the exit function...
          cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
          jne exitfunk_goodbye   ;
          mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
        exitfunk_goodbye:        ; We now perform the actual call to the exit function
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
        ^

    when 'process', nil
      asm << %Q^
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['process']}
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; ExitProcess(0)
        ^

    when 'sleep'
      asm << %Q^
          mov ebx, #{"0x%.8x" % Rex::Text.ror13_hash('Sleep')}
          push 300000            ; 300 seconds
          push ebx               ; push the hash of the function
          call ebp               ; Sleep(300000)
          jmp exitfunk           ; repeat
        ^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> rapid7/master
>>>>>>> origin/payload-generator.rb
=======
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> rapid7/master
=======
>>>>>>> master
<<<<<<< HEAD
=======
>>>>>>> master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> master
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> payload-generator.rb
>>>>>>> origin/pod/metasploit-windows.rb
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['thread'].to_s(16)}
        push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
        call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
        cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
        jl exitfunk_goodbye    ; Then just call the exit function...
        cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
        jne exitfunk_goodbye   ;
        mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
      exitfunk_goodbye:        ; We now perform the actual call to the exit function
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
      ^
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
>>>>>>> msf-complex-payloads
=======
=======
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb

    when 'process', nil
      asm << %Q^
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['process'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; ExitProcess(0)
      ^

    when 'sleep'
      asm << %Q^
        mov ebx, #{Rex::Text.block_api_hash('kernel32.dll', 'Sleep')}
        push 300000            ; 300 seconds
        push ebx               ; push the hash of the function
        call ebp               ; Sleep(300000)
        jmp exitfunk           ; repeat
      ^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['thread']}
          push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
          call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
          cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
          jl exitfunk_goodbye    ; Then just call the exit function...
          cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
          jne exitfunk_goodbye   ;
          mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
        exitfunk_goodbye:        ; We now perform the actual call to the exit function
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
        ^
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-windows.rb

    when 'process', nil
      asm << %Q^
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['process'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; ExitProcess(0)
      ^

    when 'sleep'
      asm << %Q^
<<<<<<< HEAD
          mov ebx, #{"0x%.8x" % Rex::Text.ror13_hash('Sleep')}
          push 300000            ; 300 seconds
          push ebx               ; push the hash of the function
          call ebp               ; Sleep(300000)
          jmp exitfunk           ; repeat
        ^
>>>>>>> feature/complex-payloads
=======
        mov ebx, #{Rex::Text.block_api_hash('kernel32.dll', 'Sleep')}
        push 300000            ; 300 seconds
        push ebx               ; push the hash of the function
        call ebp               ; Sleep(300000)
        jmp exitfunk           ; repeat
      ^
<<<<<<< HEAD
=======
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['thread']}
          push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
          call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
          cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
          jl exitfunk_goodbye    ; Then just call the exit function...
          cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
          jne exitfunk_goodbye   ;
          mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
        exitfunk_goodbye:        ; We now perform the actual call to the exit function
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
        ^
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/metasploit-gemfile-
>>>>>>> origin/pod/metasploit-framework

    when 'process', nil
      asm << %Q^
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['process'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; ExitProcess(0)
      ^

    when 'sleep'
      asm << %Q^
<<<<<<< HEAD
<<<<<<< HEAD
          mov ebx, #{"0x%.8x" % Rex::Text.ror13_hash('Sleep')}
          push 300000            ; 300 seconds
          push ebx               ; push the hash of the function
          call ebp               ; Sleep(300000)
          jmp exitfunk           ; repeat
        ^
>>>>>>> feature/complex-payloads
=======
=======
>>>>>>> origin/pod/metasploit-framework
        mov ebx, #{Rex::Text.block_api_hash('kernel32.dll', 'Sleep')}
        push 300000            ; 300 seconds
        push ebx               ; push the hash of the function
        call ebp               ; Sleep(300000)
        jmp exitfunk           ; repeat
      ^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['thread']}
          push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
          call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
          cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
          jl exitfunk_goodbye    ; Then just call the exit function...
          cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
          jne exitfunk_goodbye   ;
          mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
        exitfunk_goodbye:        ; We now perform the actual call to the exit function
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
        ^
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
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-

    when 'process', nil
      asm << %Q^
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['process'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; ExitProcess(0)
      ^

    when 'sleep'
      asm << %Q^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
          mov ebx, #{"0x%.8x" % Rex::Text.ror13_hash('Sleep')}
          push 300000            ; 300 seconds
          push ebx               ; push the hash of the function
          call ebp               ; Sleep(300000)
          jmp exitfunk           ; repeat
        ^
>>>>>>> feature/complex-payloads
=======
<<<<<<< HEAD
=======
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> chore/MSP-12110/celluloid-supervision-tree
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
        mov ebx, #{Rex::Text.block_api_hash('kernel32.dll', 'Sleep')}
        push 300000            ; 300 seconds
        push ebx               ; push the hash of the function
        call ebp               ; Sleep(300000)
        jmp exitfunk           ; repeat
      ^
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> origin/feature/complex-payloads
          mov ebx, #{"0x%.8x" % Msf::Payload::Windows.exit_types['thread']}
          push 0x9DBD95A6        ; hash( "kernel32.dll", "GetVersion" )
          call ebp               ; GetVersion(); (AL will = major version and AH will = minor version)
          cmp al, 6              ; If we are not running on Windows Vista, 2008 or 7
          jl exitfunk_goodbye    ; Then just call the exit function...
          cmp bl, 0xE0           ; If we are trying a call to kernel32.dll!ExitThread on Windows Vista, 2008 or 7...
          jne exitfunk_goodbye   ;
          mov ebx, 0x6F721347    ; Then we substitute the EXITFUNK to that of ntdll.dll!RtlExitUserThread
        exitfunk_goodbye:        ; We now perform the actual call to the exit function
          push.i8 0              ; push the exit function parameter
          push ebx               ; push the hash of the exit function
          call ebp               ; call ExitThread(0) || RtlExitUserThread(0)
        ^
=======
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree

    when 'process', nil
      asm << %Q^
        mov ebx, 0x#{Msf::Payload::Windows.exit_types['process'].to_s(16)}
        push.i8 0              ; push the exit function parameter
        push ebx               ; push the hash of the exit function
        call ebp               ; ExitProcess(0)
      ^

    when 'sleep'
      asm << %Q^
<<<<<<< HEAD
<<<<<<< HEAD
          mov ebx, #{"0x%.8x" % Rex::Text.ror13_hash('Sleep')}
          push 300000            ; 300 seconds
          push ebx               ; push the hash of the function
          call ebp               ; Sleep(300000)
          jmp exitfunk           ; repeat
        ^
<<<<<<< HEAD
>>>>>>> rapid7/feature/complex-payloads
=======
>>>>>>> origin/feature/complex-payloads
=======
<<<<<<< HEAD
=======
>>>>>>> origin/msf-complex-payloads
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-gemfile-
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-api/_index.html
=======
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> 4.11.2_release_pre-rails4
=======
<<<<<<< HEAD
=======
>>>>>>> msf-complex-payloads
=======
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
<<<<<<< HEAD
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> payload-generator.rb
<<<<<<< HEAD
=======
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-windows.rb
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> rapid7/master
=======
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-framework
=======
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/msf-complex-payloads
=======
>>>>>>> origin/msf-complex-payloads
=======
=======
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> msf-complex-payloads
=======
>>>>>>> msf-complex-payloads
=======
=======
<<<<<<< HEAD
>>>>>>> pod/metasploit-gemfile-
=======
>>>>>>> origin/pod/metasploit-framework
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> rapid7/master
=======
>>>>>>> origin/pod/metasploit-windows.rb
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> rapid7/master
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> origin/payload-generator.rb
=======
=======
>>>>>>> rapid7/master
>>>>>>> msf-complex-payloads
>>>>>>> origin/pod/metasploit-api/_index.html
=======
>>>>>>> 4.11.2_release_pre-rails4
>>>>>>> origin/pod/metasploit-excellent.mp3
=======
=======
>>>>>>> master
<<<<<<< HEAD
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
=======
=======
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
=======
>>>>>>> master
>>>>>>> origin/pod/metasploit-gemfile-
=======
>>>>>>> master
=======
>>>>>>> master
=======
>>>>>>> master
<<<<<<< HEAD
<<<<<<< HEAD
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
>>>>>>> rapid7/master
>>>>>>> origin/pod/metasploit-serialized_class_loader
=======
>>>>>>> origin/pod/metasploit-gemfile-
=======
=======
>>>>>>> master
>>>>>>> payload-generator.rb
=======
>>>>>>> pod/complex-payloads
>>>>>>> origin/pod/metasploit-windows.rb
=======
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
        mov ebx, #{Rex::Text.block_api_hash('kernel32.dll', 'Sleep')}
        push 300000            ; 300 seconds
        push ebx               ; push the hash of the function
        call ebp               ; Sleep(300000)
        jmp exitfunk           ; repeat
      ^
<<<<<<< HEAD
>>>>>>> origin/4.11.2_release_pre-rails4
=======
>>>>>>> origin/chore/MSP-12110/celluloid-supervision-tree
=======
>>>>>>> origin/feature/complex-payloads
=======
>>>>>>> rapid7/feature/complex-payloads
    else
      # Do nothing and continue after the end of the shellcode
    end

    asm
  end


end

end

