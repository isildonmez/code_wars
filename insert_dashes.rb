# https://www.codewars.com/kata/insert-dashes

require 'benchmark'
def insert_dash(num)
  result= []
  dash = false
  num.to_s.split('').map(&:to_i).each do |digit|
    if digit.even?
      dash = false
    else
      if dash
      	result.push("-")
      else
        dash = true
      end
    end
    result.push(digit.to_s)
  end
  result.join
end

p insert_dash(134589790)


def insert_dash_2(num)
  num.to_s.split(/(?<=[13579])(?=[13579])/).join('-')
end

2.4.1 :024 >   "1,2,3".split(/,/)
 => ["1", "2", "3"]
2.4.1 :025 > "1,2,3".split(//)
 => ["1", ",", "2", ",", "3"]
2.4.1 :026 > "1,2,3".split(/(?<=,)/)
 => ["1,", "2,", "3"]
2.4.1 :027 > "1,a2,a3".split(/,/)
 => ["1", "a2", "a3"]
2.4.1 :028 > "1,a2,a3".split(/(?<=,)/)
 => ["1,", "a2,", "a3"]
2.4.1 :031 > "1,a2,a3".split(/a/)
 => ["1,", "2,", "3"]
2.4.1 :033 > "1,a2,a3".split(/\./)
 => ["1,a2,a3"]
2.4.1 :034 > "1,a2,a3".split(/\w/)
 => ["", ",", "", ","]
2.4.1 :035 > "1,a2,a3".split(/a/)
 => ["1,", "2,", "3"]
2.4.1 :036 > "1,a2,b3".split(/(?<=,)/)
 => ["1,", "a2,", "b3"]
2.4.1 :037 > "1,a2,b3".split(/(?<=,)a/)
 => ["1,", "2,b3"]
2.4.1 :038 > "1,a2,b3".split(/(?<=,)(?=a)/)
 => ["1,", "a2,b3"]













