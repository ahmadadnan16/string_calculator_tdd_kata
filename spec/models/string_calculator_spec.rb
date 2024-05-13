require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe ".add" do
    it "returns 0 for an empty string" do
      result = StringCalculator.add("")
      expect(result).to eq(0)
    end

    it "returns the number for a single number string" do
      result = StringCalculator.add("1")
      expect(result).to eq(1)
    end

    it "returns the sum of two numbers" do
      result = StringCalculator.add("1,5")
      expect(result).to eq(6)
    end

    it "returns the sum with new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "returns the sum with a different delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(0)
    end

    it "raises an exception for negative numbers" do
      expect { StringCalculator.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
    end

    it "raises an exception with all negative numbers listed" do
      expect { StringCalculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
    end
  end
end
