require 'string_builder'

RSpec.describe StringBuilder do
  it "Initialises a string object, adds a word, then outputs the word and the string length" do
    string = StringBuilder.new()
    string.add("Hello")
    expect(string.size).to eq 5
    expect(string.output).to eq "Hello"
  end
  it "Initialises a string object, adds multiple words, then outputs the phrase and the string length" do
    string = StringBuilder.new()
    string.add("Hello")
    string.add(", world!")
    expect(string.size).to eq 13
    expect(string.output).to eq "Hello, world!"
  end

end
