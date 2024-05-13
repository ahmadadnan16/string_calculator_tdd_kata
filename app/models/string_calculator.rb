class StringCalculator < ApplicationRecord
	def self.add(numbers)
		return 0 if numbers.empty?
		delimiter = ","
		if numbers.start_with?("//")
			delimiter = numbers[2]
			numbers = numbers[4..-1]
		end
		numbers.split(/#{delimiter}|\n/).map(&:to_i).reduce(:+)
	end
end
