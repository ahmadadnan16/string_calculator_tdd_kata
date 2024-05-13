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
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end
