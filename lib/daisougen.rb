# frozen_string_literal: true

require "daisougen/version"
require "daisougen/cli"
require "daisougen/item"

module Daisougen
  class Error < StandardError; end

  def self.gacha
    ITEMS.repeated_combination(3).to_a.sample
  end

  ITEMS = [
    Item.new("大", ":dai:"),
    Item.new("草", ":sou:"),
    Item.new("原", ":gen:")
  ].freeze
end
