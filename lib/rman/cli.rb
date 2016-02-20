require 'rman'
require 'thor'

module Rman
  class CLI < Thor
    default_command :rman

    desc "rman", "Show a man page randomly"
    def rman
      commands = File.open("lib/fixtures/commands_centos72").read.split("\n")
      loop do
        command = commands.shuffle.first
        if system "man #{command} 1> /dev/null 2> /dev/null"
          system "man #{command}"
          break
        end
      end
    end
  end
end
