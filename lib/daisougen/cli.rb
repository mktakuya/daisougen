# frozen_string_literal: true

require "thor"

module Daisougen
  class CLI < Thor
    desc "daisougen", "print daisougen gacha"
    option :emoji, aliases: :e
    def daisougen
      message = if options.key?(:emoji)
                  "emoji"
                else
                  "daisougen"
                end
      puts message
    end
  end
end