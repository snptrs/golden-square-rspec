require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "Returns 'Correct! Come in." do
    expect(check_codeword('horse')).to eq 'Correct! Come in.'
  end
  it "Returns 'Close, but nope." do
    expect(check_codeword('home')).to eq 'Close, but nope.'
  end
  it "Returns 'WRONG!" do
    expect(check_codeword('cow')).to eq 'WRONG!'
  end
end
