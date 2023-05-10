require 'string_builder'

RSpec.describe StringBuilder do
  it "returns a string and has the correct string length" do
    string = StringBuilder.new()
    string.add("Hello")
    expect(string.size).to eq 5
    expect(string.output).to eq "Hello"
  end
  it "returns a concatenated string and has the correct string length" do
    string = StringBuilder.new()
    string.add("Hello")
    string.add(", world!")
    expect(string.size).to eq 13
    expect(string.output).to eq "Hello, world!"
  end

end
