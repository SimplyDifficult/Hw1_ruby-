# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  ans=0
  arr.each{|a| ans+=a}
  return ans
end

def max_2_sum(arr)
  # YOUR CODE HERE
  l = arr.length
  if l == 0
    return 0
  elsif l==1
    return arr[0]
  else 
    arr = arr.sort
    return (arr[-1]+arr[-2])
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  n = arr.length
  if n==0
    return false
  elsif n==1
    return false
  end

  arr = arr.sort
  l=0
  r=n-1
  while l<r
    if arr[l]+arr[r]>number 
      r-=1
    elsif arr[l]+arr[r]<number 
      l+=1
    else 
      return true
    end 
  end 
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.size==0
    return false
  end  
  if string.match(/\A+[aeiouAEIOU\W]/)==nil 
    return true
  else 
    return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.size == 0
    return false 
  end

  if (string !~ /[^01 ]/) and (string.to_i(2) % 4 == 0)
    return true
  else 
    return false
  end 
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if (price<=0) or (isbn.empty?)
      raise ArgumentError
    end 
    @isbn = isbn 
    @price = price
  end 

  def price_as_string
    return "$%0.2f" %price
  end
end
