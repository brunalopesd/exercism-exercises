require 'pry'

class Isogram
  def self.isogram?(input)
    word = input.scan(/\w/).join
    word.downcase.chars.uniq == word.downcase.chars
  end
end