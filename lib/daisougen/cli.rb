# frozen_string_literal: true

require "thor"

module Daisougen
  class CLI < Thor
    desc "daisougen", "大草原ガチャ"
    option :emoji, aliases: :e
    def daisougen
      result = Daisougen.gacha

      message = if options.key?(:emoji)
                  result.map(&:emoji).join
                else
                  result.map(&:kanji).join
                end
      puts message
    end
  end
end