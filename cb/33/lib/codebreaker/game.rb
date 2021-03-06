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
      if exact_match?(guess, 0)
        mark = '+'
      elsif number_match?(guess, 0)
        mark = '-' 
      else
        mark = ''
      end
      @result.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end
