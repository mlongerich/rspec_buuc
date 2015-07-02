require_relative '../spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do
      it 'sends a welcome message' do
        result = double('result')
        game = Game.new(result)

        expect(result).to receive(:puts).with('Welcome to Codebreaker!')

        game.start
      end

      it 'prompts for the first guess' do
        result = double('result')
        game = Game.new(result)

        expect(result).to receive(:puts).with('Enter guess:')

        game.start
      end
    end
  end

end
