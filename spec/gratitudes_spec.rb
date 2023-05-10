require "gratitudes"

RSpec.describe Gratitudes do
  it "returns default string when not given an input" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns one gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("sunshine")
    expect(gratitudes.format).to eq "Be grateful for: sunshine"
  end

  context "returns a string with two gratitudes" do
    it "Returns 'Be grateful for: ' and two gratitudes" do
      gratitudes = Gratitudes.new
      gratitudes.add("sunshine")
      gratitudes.add("coffee")
      expect(gratitudes.format).to eq "Be grateful for: sunshine, coffee"
    end

    it "returns a string with three gratitudes" do
      gratitudes = Gratitudes.new
      gratitudes.add("sunshine")
      gratitudes.add("coffee")
      gratitudes.add("dogs")
      expect(gratitudes.format).to eq "Be grateful for: sunshine, coffee, dogs"
    end
  end
end