=begin
Reverte os numeros
dobrar os numeros dos indices impares!!!
somas todos os numeros 
tem q ser divisivel por 10 
=end

require 'pry'

class Luhn

  def self.valid?(input)
    return false unless valid_string(input)
  end

  def self.valid_string(input)
    binding.pry
    input.to_i if (input.length > 1 && input != /\D/)
  end


  def self.double_number(input)
    numbers = input.reverse
    binding.pry
  end

  def self.divisivel_by_10?(input)
    return if input % 10 == 0
  end
  

  def self.sum_number(input)
    input.slice(2).sum do |a, b = 0|
      a + double_number(b)
    end
  end

end

