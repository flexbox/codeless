#!/usr/bin/env ruby

require "thor"

class CodelessCLI < Thor
  include Thor::Actions

  desc 'getInfo', 'tell us your info'

  def get_user_info
    say("\n\nHello, before we continue I need some information from you...\n\n\n")

    [ 'name', 'github', 'twitter' ].each do |info|
      append_to_file '.env', "\n#{info.upcase}='#{ask("\n\nWhat is your #{info}?\n", :yellow)}'"
    end

    say("\n\nComplete!\n\n", :green)
  end

end

CodelessCLI.start(ARGV)
