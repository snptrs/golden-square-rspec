require 'report_length'

RSpec.describe "report_length method" do
  it "returns 3 when given 'Dog'" do
    expect(report_length('Dog')).to eq 'This string was 3 characters long.'
  end
  it "returns 5 when given 'Table'" do
    expect(report_length('Table')).to eq 'This string was 5 characters long.'
  end
  it "returns 7 when given 'Giraffe'" do
    expect(report_length('Giraffe')).to eq 'This string was 7 characters long.'
  end
end
