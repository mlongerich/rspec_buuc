require_relative '../spec_helper'

module Codebreaker
  describe Game do
    describe "#start" do

      let(:result) { double('result').as_null_object }
      let(:game) { Game.new(result) }

      it 'sends a welcome message' do
        expect(result).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it 'prompts for the first guess' do
        expect(result).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end
  end

end
