require('rspec')
require('numwords')

describe('Fixnum#numwords') do
  it("will return the word value of a number between 1 and 19") do
    expect((1).numwords()).to(eq("one"))
  end
end
