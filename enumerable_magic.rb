# https://www.codewars.com/kata/enumerable-magic-number-7-find-a-matching-item/solutions/ruby

def find(list, &block)
  list.each { |var| return var if block.call(var)}
  nil
end


def find_2(list, &block)
  list.find(&block)
end

def find_3(list, &block)
  list.detect(&block)
end