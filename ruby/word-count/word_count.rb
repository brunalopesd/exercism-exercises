require 'pry'

class Phrase

  def initialize(phrase)
    @phrase = phrase
  end 

  def word_count
    words = @phrase.downcase.scan(/\b[\w']+\b/).group_by(&:itself)
    Hash[words.map { |k, v| [k, v.length] }]
  end
end

