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
      exact_match_count = 0
      number_match_count = 0
      (0..3).each do |index|
        if exact_match?(guess, index)
          exact_match_count +=1
        end
      end
      (0..3).each do |index|
        if number_match?(guess, index)
          number_match_count +=1
        end
      end
      @result.puts '+'*exact_match_count + '-'*number_match_count
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end
  end
end
