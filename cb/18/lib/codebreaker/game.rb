module Codebreaker
  class Game
    def initialize(result)
      @result = result
    end

    def start(secret)
      @result.puts "Welcome to Codebreaker!"
      @result.puts "Enter guess:"
    end
  end
end
