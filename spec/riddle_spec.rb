require 'rspec'
require 'riddle'

describe("Riddle") do
  it("should return array of five random riddles") do
    Riddle.new()
    random_riddles = Riddle.random
    expect(random_riddles).to(eq([]))
  end
  
end