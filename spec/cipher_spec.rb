# spec cipher_spec.rb
require "./lib/caesar_cipher"

describe "caesar_cipher" do
  describe "#shift_str_char" do
    it "shifts input characters to a later character" do
      expect(shift_str_char("h", "a".ord, 4)).to eql("l")
    end

    it "wraps around after the 26th letter" do
      expect(shift_str_char("Z", "A".ord, 4)).to eql("D")
    end
  end

  describe "#str_char_validation" do
    it "maintains the capitalization of a sentence" do
      expect(str_char_validation("Hello World", 5)).to eq("Mjqqt Btwqi")
    end

    it "encrypts a sentence correctly" do
      expect(str_char_validation("hello world", 5)).to eq("mjqqt btwqi")
    end

    it "returns the original sentence if shift amount is zero" do
      expect(str_char_validation("hello world", 0)).to eq("hello world")
    end

    it "checks for non letter characters" do
      expect(str_char_validation("h!e$l@l&o w!o$r^l*d", 4)).to eql("l!i$p@p&s a!s$v^p*h")
    end
  end
end
