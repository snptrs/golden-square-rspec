require 'present'

RSpec.describe Present do
  context "when wrapping and unwrapping contents" do
    it "wraps and unwraps a value" do
      present = Present.new
      present.wrap("book")
      expect(present.unwrap).to eq "book"
    end

    it "fails if we unwrap something that hasn't been wrapped" do
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails if contents have been wrapped already" do
      present = Present.new
      present.wrap("chocolates")
      expect { present.wrap("chocolates") }.to raise_error "A contents has already been wrapped."
    end
  end
end