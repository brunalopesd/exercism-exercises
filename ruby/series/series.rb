require 'pry'

class Series
  def initialize(num)
    @num = num
  end

  def slices(len)
    raise ArgumentError unless len <= @num.length
    @num.chars.each_cons(len).map(&:join)
  end
end


