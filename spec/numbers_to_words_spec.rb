require('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it("will return the word value of a number between 1 and 19") do
    expect((1).numbers_to_words()).to(eq("one"))
  end
end
