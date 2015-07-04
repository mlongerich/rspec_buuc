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
      context "with no matchers" do
        it "sends a mark with ''" do
          game.start('1234')
          expect(result).to receive(:puts).with('')
          game.guess('5555')
        end
      end
      context "with 1 number match" do
        it "sends a mark with '-'" do
          game.start('1234')
          expect(result).to receive(:puts).with('-')
          game.guess('2555')
        end
      end
    end
  end
end
