require 'greet'

RSpec.describe "Greet method" do
  it "returns a greeting" do
    result = greet("Sean")
    expect(result).to eq "Hello, Sean!"
  end
end
