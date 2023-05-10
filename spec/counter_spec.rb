require 'counter'

RSpec.describe Counter do
  it "returns a given number" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."
  end

  it "returns the total when given multiple positive numbers" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."

    counter.add(6)
    expect(counter.report).to eq "Counted to 10 so far."

    counter.add(10)
    expect(counter.report).to eq "Counted to 20 so far."
  end

  it "returns the total when given multiple positive or negative numbers" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."

    counter.add(6)
    expect(counter.report).to eq "Counted to 10 so far."

    counter.add(-1)
    expect(counter.report).to eq "Counted to 9 so far."
  end
end
