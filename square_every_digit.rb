# https://www.codewars.com/kata/546e2562b03326a88e000020

def square_digits(num)
	num.to_s.chars.map(&:to_i).map { |n| n ** 2 }.join.to_i
end