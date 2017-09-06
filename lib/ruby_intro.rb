# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |num|
    total += num
  end
  total
end

def max_2_sum arr
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.sort!
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.length == 0 || arr.length == 1
  arr.each do |x|
    arr.each do |y|
      if x != y
        return true if n == x + y
      end
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty? == true
  return false if s[0].match(/[[:alpha:]]/).nil?
  vowels = ["a","A","e","E","i","I","o","O","u","U"]
  vowels.each do |x|
    return false if s[0] == x
  end
  true
end

def binary_multiple_of_4? s
  return false if s == ""
  arr = s.chars
  arr.each do |z|
    return false if z != "0" && z!= "1"
  end
  return true if s.end_with?("00") || s == "0"
  false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("isbn cannot be empty string") if isbn.empty? == true
    @isbn = isbn
    raise ArgumentError.new("price must be greater than zero") if price <= 0
    @price = price
  end
  
  def price_as_string
    ("$#{'%.2f' % @price}")
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price.to_f
  end
  
end
