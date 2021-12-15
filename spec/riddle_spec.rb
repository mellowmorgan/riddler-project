require 'rspec'
require 'riddle'

describe("Riddle") do
  it("should return array of five random riddles") do
    Riddle.new()
    Riddle.random
    expect(Riddle.random_riddles).to(eq([]))
  end
  
end