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

    def test_new_lines_between_numbers_returns_sum
      assert_equal 6, StringCalculator.add("1\n2,3")
    end
  end
end
