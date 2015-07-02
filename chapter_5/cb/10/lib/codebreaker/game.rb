module Codebreaker
  class Game
    def initialize(result)
      @result = result
    end

    def start
      @result.puts "Welcome to Codebreaker!"
    end
  end
end
