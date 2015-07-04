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
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << '+'
        elsif number_match?(guess, index)
          mark << '-' 
        end
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
