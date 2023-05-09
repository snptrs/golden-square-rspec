require 'greet'

RSpec.describe "Greet method" do
  it "Returns 'Hello, Sean!'" do
    result = greet("Sean")
    expect(result).to eq "Hello, Sean!"
  end
end
