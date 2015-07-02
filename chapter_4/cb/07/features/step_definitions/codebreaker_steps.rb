class Result
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def result
  @result ||= Result.new
end

Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(result)
  game.start
end

Then(/^I should see "([^"]*)"$/)do |message|
  expect(result.messages).to include(message)
end
