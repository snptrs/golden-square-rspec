require 'counter'

RSpec.describe Counter do
  it "Initialises a counter object then reports the current total" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."
  end

  it "Initialises a counter object, increments it a couple of times, then reports the current total" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."

    counter.add(6)
    expect(counter.report).to eq "Counted to 10 so far."

    counter.add(10)
    expect(counter.report).to eq "Counted to 20 so far."
  end

  it "Initialises a counter object, increments it a couple of times with poistive and negative numbers, then reports the current total" do
    counter = Counter.new()
    counter.add(4)
    expect(counter.report).to eq "Counted to 4 so far."

    counter.add(6)
    expect(counter.report).to eq "Counted to 10 so far."

    counter.add(-1)
    expect(counter.report).to eq "Counted to 9 so far."
  end
end
