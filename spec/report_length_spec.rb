require 'report_length'

RSpec.describe "report_length method" do
  it "Returns 'Hello, Sean!'" do
    result = greet("Sean")
    expect(result).to eq "Hello, Sean!"
  end
end
