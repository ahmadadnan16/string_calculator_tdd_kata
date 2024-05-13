class StringCalculator < ApplicationRecord
	def self.add(numbers)
		return 0 if numbers.empty?
		return numbers.to_i if numbers.count(',') == 0
		delimiter = ","
		if numbers.start_with?("//")
			delimiter = numbers[2]
			numbers = numbers[4..-1]
		end
		numbers_arr = numbers.split(/#{delimiter}|\n/).map(&:to_i)
		negatives = numbers_arr.select { |num| num < 0 }
		raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
		numbers_arr.reduce(:+)
	end
end
