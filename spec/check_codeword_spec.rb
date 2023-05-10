require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns correct if given the right codeword" do
    expect(check_codeword('horse')).to eq 'Correct! Come in.'
  end
  it "returns 'close' if given an almost-correct codeword" do
    expect(check_codeword('home')).to eq 'Close, but nope.'
  end
  it "returns wrong if given incorrect codeword" do
    expect(check_codeword('cow')).to eq 'WRONG!'
  end
end
