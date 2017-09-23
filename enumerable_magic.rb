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

# `detect` and `find` are two names for the same method.

# find(ifnone = nil) { |obj| block } → obj or nil
# Passes each entry in enum to block.
# Returns the first for which block is not false.
# If no object matches, calls ifnone and returns its result when it is specified,
# or returns nil otherwise.

# find(ifnone = nil) → an_enumerator
# If no block is given, an enumerator is returned instead.

# To check find_index and find_all methods,
# please visit https://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-find