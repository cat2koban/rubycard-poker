require 'spec_helper'
require './lib/card'

RSpec.describe 'Judge' do
  describe 'test' do
    subject { instance.test }

    let(:hands) do
      cards = [
        RubyCards::Card.new(RubyCards::Card.number_to_string(1), 'CLUB'),
        RubyCards::Card.new(RubyCards::Card.number_to_string(1), 'SPADE'),
        RubyCards::Card.new(RubyCards::Card.number_to_string(2), 'SPADE'),
        RubyCards::Card.new(RubyCards::Card.number_to_string(3), 'SPADE'),
        RubyCards::Card.new(RubyCards::Card.number_to_string(4), 'SPADE'),
      ]
      RubyCards::Hand.new(cards)
    end
    let(:instance) { JudgeMent.new(hands) }
    it { is_expected.to eq true }
  end
end
