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
      marker = Marker.new(@secret, guess)
      @result.puts '+'*marker.exact_match_count + 
                   '-'*marker.number_match_count
    end
  end
end
