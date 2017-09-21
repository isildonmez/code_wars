# https://www.codewars.com/kata/5761a717780f8950ce001473

def calculate_age(year_of_birth, current_year)
	result = year_of_birth - current_year
	return "You are #{(result).abs} years old." if result < -1
	return "You are #{(result).abs} year old." if result == -1
	return "You were born this very year!" if result == 0
	return "You will be born in #{result.abs} year." if result == 1
	return "You will be born in #{result} years." if result > 1
end
