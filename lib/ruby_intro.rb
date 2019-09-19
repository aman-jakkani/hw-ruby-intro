# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    b = arr.sort
    return b[arr.length - 1] + b[arr.length - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  else
    for i in 0..arr.length - 2 do
      for j in i+1..arr.length - 1 do
        if arr[i] + arr[j] == n 
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s[0] =~ /[A-Za-z]/)
    if(s[0] =~ /[AEIOUaeiou]/)
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  elsif (s =~ /^[0-1]/ and s.to_i % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if(isbn.empty? or price <= 0)
      raise ArgumentError, 'Argument format(s) are wrong'
    else
      @isbn = isbn
      @price = price
    end
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
    @price = price
  end
  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
