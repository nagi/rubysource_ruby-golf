require 'minitest/autorun'

describe :caesar do
  it "shifts 'hello' 3" do
    caesar('hello', 3).must_equal 'khoor'
  end

  it "shifts 'axel' 3" do
    caesar('axel', 3).must_equal 'daho'
  end

  it "shifts 'simeon' -1" do
    caesar('tjnfpo', -1).must_equal 'simeon'
  end

  it "should be able to handle high positive shifts" do
    caesar('axel', 264).must_equal 'ebip'
  end

  it "should be able to handle low negative shifts" do
    caesar('brown', -263).must_equal 'yoltk'
  end
end

def caesar(p, s)
  c=''
  a=(?a..?z).to_a
  p.each_char{|l|c<<a[(a.index(l)+s)%26]}
  c
end
