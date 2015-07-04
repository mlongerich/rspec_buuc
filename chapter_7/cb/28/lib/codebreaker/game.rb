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
      if @secret.include?(guess[0])
        mark = '-' 
      else
        mark = ''
      end
      @result.puts mark
    end
  end
end
