require_relative '../spec_helper'

module Codebreaker
  describe Game do
    let(:result) { double('result').as_null_object }
    let(:game) { Game.new(result) }
    
    describe "#start" do

      it 'sends a welcome message' do
        expect(result).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it 'prompts for the first guess' do
        expect(result).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end

    describe "#guess" do
      it "sends the mark to output" do
        game.start('1234')
        expect(result).to receive(:puts).with('++++')
        game.guess('1234')
      end
    end
  end
end
