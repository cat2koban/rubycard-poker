# frozen_string_literal: true
require 'rubycards'
require 'pry'
include RubyCards

module RubyCards
  class Card
    MARKS = %w[CLUB DIAMOND HEART SPADE]
    def self.number_to_string(number)
      number_hash = { 11 => 'Jack', 12 => 'Queen', 13 => 'King', 1 => 'Ace' }.merge( (2..10).map { |n| [n, n] }.to_h )
      number_hash[number]
    end
  end
end

class JudgeMent
  def initialize(hands)
    @hand = hands
  end

  def test
    true
  end
end
