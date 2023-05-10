require "gratitudes"

RSpec.describe Gratitudes do
  it "Initially returns 'Be grateful for:'" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "Given one gratitude, returns a string including the gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("sunshine")
    expect(gratitudes.format).to eq "Be grateful for: sunshine"
  end

  context "Given multiple gratitudes" do
    it "Returns 'Be grateful for: ' and two gratitudes" do
      gratitudes = Gratitudes.new
      gratitudes.add("sunshine")
      gratitudes.add("coffee")
      expect(gratitudes.format).to eq "Be grateful for: sunshine, coffee"
    end

    it "Returns 'Be grateful for: ' and three gratitudes" do
      gratitudes = Gratitudes.new
      gratitudes.add("sunshine")
      gratitudes.add("coffee")
      gratitudes.add("dogs")
      expect(gratitudes.format).to eq "Be grateful for: sunshine, coffee, dogs"
    end
  end
end