require 'password_checker'

RSpec.describe PasswordChecker do
  context "when checking a password" do
    it "returns true if password >= 8 characters" do
      password_checker = PasswordChecker.new
      expect(password_checker.check("elephant")).to eq true
    end

    it "fails it password < 8 characters" do
      password_checker = PasswordChecker.new
      expect { password_checker.check("giraffe") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end