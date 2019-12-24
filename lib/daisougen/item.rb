# frozen_string_literal: true

module Daisougen
  class Item
    attr_reader :kanji, :emoji

    def initialize(kanji, emoji)
      @kanji = kanji
      @emoji = emoji
    end
  end
end
