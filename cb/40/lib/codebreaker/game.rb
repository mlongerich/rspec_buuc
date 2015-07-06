module Codebreaker
  class Game
    def initialize(result)
      @result = result
    end

    def start(secret)
      @secret = secret
      @result.puts "Welcome to Codebreaker!"
      @result.puts "Enter guess:"
    end

    def guess(guess)
      @result.puts '+'*exact_match_count(guess) + '-'*number_match_count(guess)
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def exact_match_count(guess)
      (0..3).inject(0) do |count, index|
        count + (exact_match?(guess, index) ? 1 : 0)
      end
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end

    def number_match_count(guess)
      (0..3).inject(0) do |count, index|
        count +(number_match?(guess, index) ? 1 : 0)
      end
    end
  end
end
