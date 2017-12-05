# frozen_string_literal: true

require 'spec_helper'
include BowlingGame

RSpec.describe BowlingGame::Game do
  describe '#score' do
    context 'when one throw' do
      it '#scored' do
        g = Game.new
        g.add(5)
        expect(g.score).to eq(5)
      end
    end
  end
end
