require('pry')
require('rspec')
require('rps')

describe("it will take the user's choice and play a round of Rock, Paper, Scissors") do
  it("returns 1 if rock is the object and scissors is the argument") do
    expect("Rock".rps("Scissors")).to(eq(1))
  end
  it("returns 1 if Scissors is the object and paper is the argument") do
    expect("Scissors".rps("Paper")).to(eq(1))
  end
  it("returns 1 if Paper is the object and Rock is the argument") do
    expect("Paper".rps("Rock")).to(eq(1))
  end
  it("returns 2 if player 2 wins") do
    expect("Rock".rps("Paper")).to(eq(2))
    expect("Scissors".rps("Rock")).to(eq(2))
    expect("Paper".rps("Scissors")).to(eq(2))
  end
  it("returns 0 if a tie") do
    expect("Paper".rps("Paper")).to(eq(0))
  end
end
