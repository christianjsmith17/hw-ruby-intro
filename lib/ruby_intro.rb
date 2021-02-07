# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  elsif arr[1] > arr[0]
    max_val = arr[1]
    second_max_val = arr[0]
  else
    max_val = arr[0]
    second_max_val = arr[1]
  end
  
  for i in 2..arr.length-1 do
    if arr[i] > max_val
      second_max_val = max_val
      max_val = arr[i]
    elsif arr[i] > second_max_val
      second_max_val = arr[i]
    end
  end
  max_val + second_max_val
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end
  
  for i in 0..arr.length-1 do
    for j in 0..arr.length-1 do
      if arr[i] + arr[j] == n && i != j
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s == ""
    return false
  elsif s[0] =~ /[\WaeiouAEIOU]/
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  return s =~ /^[10]*00$/ || s == '0'
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Expected valid ISBN number"
    ) if isbn == ""
    
    raise ArgumentError.new(
      "Expected valid price"
    ) if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    if (price.to_s =~ /\.\d\d/)
      return "$" + price.to_s
    elsif (price.to_s =~ /\.\d$/)
      return "$" + price.to_s + "0"
    else
      return "$" + price.to_s + ".00"
    end
  end
end
