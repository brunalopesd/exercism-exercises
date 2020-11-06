require 'pry'

class Hamming

  def self.compute(dna1, dna2)
    raise ArgumentError unless dna1.size == dna2.size 
    dna1.chars.zip(dna2.chars).select { |a,b| a != b }.count
  end
end
