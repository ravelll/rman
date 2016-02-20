require 'rman'
require 'thor'

module Rman
  class CLI < Thor
    default_command :rman

    desc "rman", "Show a man page randomly"
    def rman
      commands = `ls /bin /sbin /usr/bin /usr/sbin /usr/local/bin | grep -v /`.split("\n")

      loop do
        command = commands.sample
        if command && system("man #{command} 1> /dev/null 2> /dev/null")
          system "man #{command}"
          break
        end
      end
    end
  end
end
