require_relative '../spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do
      before(:each) do
        @result = double('result').as_null_object
        @game = Game.new(result)
      end

      it 'sends a welcome message' do
        expect(@result).to receive(:puts).with('Welcome to Codebreaker!')
        @game.start
      end

      it 'prompts for the first guess' do
        expect(@result).to receive(:puts).with('Enter guess:')
        @game.start
      end
    end
  end

end
