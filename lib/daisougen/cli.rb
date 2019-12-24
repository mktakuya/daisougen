# frozen_string_literal: true

require "thor"

module Daisougen
  class CLI < Thor
    desc "gacha", "大草原ガチャ"
    option :emoji, aliases: :e
    def gacha
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