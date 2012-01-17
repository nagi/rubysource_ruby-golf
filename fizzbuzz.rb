require 'minitest/autorun'

describe :fizzbuzz do
  it "should return 'Fizz' for multiples of 3" do
    fizzbuzz(3).must_equal 'Fizz'
  end
  it "should return 'Buzz' for multiples of 5" do
    fizzbuzz(5).must_equal 'Buzz'
  end
  it "should return 'FizzBuzz' for multiples of 15" do
    fizzbuzz(rand(10) * 15).must_equal 'FizzBuzz'
  end
  it "should return '2' for 2" do
    fizzbuzz(2).must_equal '2'
  end
end

def verbose_fizzbuzz(num)
  if num % 15 == 0
    'FizzBuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num.to_s
  end
end

def fizzbuzz(n)
  n%15<1?'FizzBuzz':(n%3<1?'Fizz':(n%5<1 ?'Buzz':n.to_s))
end
