require 'pry'

class Scrabble
  def initialize(word)
    @word = word.to_s.upcase
  end

  def self.score(word)
		new(word).score
	end
  
  def score
    result =  0
    @word.each_char do |char| 
      if LETTER_VALUES.include? char
        result += LETTER_VALUES["#{char}"]
      else
        next
      end
    end
    result
  end
  LETTER_VALUES = {
    'A' => 1,
    'B' => 3,
    'C' => 3,
    'D' => 2,
    'E' => 1,
    'F' => 4,
    'G' => 2,
    'H' => 4,
    'I' => 1,
    'J' => 8,
    'K' => 5,
    'L' => 1,
    'M' => 3,
    'N' => 1,
    'O' => 1,
    'P' => 3,
    'Q' => 10,
    'R' => 1,
    'S' => 1,
    'T' => 1,
    'U' => 1,
    'V' => 4,
    'W' => 4,
    'X' => 8,
    'Y' => 4,
    'Z' => 10
  }.freeze
end
