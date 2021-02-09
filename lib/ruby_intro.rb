# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  array_length = arr.length
  return 0 if array_length == 0
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length== 0
   return 0
  end
  if arr.length== 1
   return arr[-1]
  end
  temp = arr.sort
  return (temp[-1] + temp[-2])
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length== 1
   return FALSE
  end
  arr.each do |i|
    arr.each do |y|
      if y == i
        next
      end
      if (i + y) == n
        return TRUE
      end
    end
  end
  return FALSE
end

# Part 2

def hello(name)
  # YOUR CODE 
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  temp = s.downcase
  if (temp[0]=~/[bcdfghjklmnpqrstvwxyz]/)
    return TRUE
  end
  return FALSE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[0-1]/
    return s.to_i(2) % 4 == 0 
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError if isbn == nil || isbn.length == 0
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price

  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end
end
