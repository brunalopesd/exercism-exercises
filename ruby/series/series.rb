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

# def slices(n)
#   raise ArgumentError if n > @string.length

#   @string         # assuming n == 2 :
#     .each_char    # %w(s t r i n g)
#     .each_cons(n) # [%w(s t), %w(t r), %w(r i), %w(i n), %w(n g)]
#     .map(&:join)  # %w(st tr ri in ng)

