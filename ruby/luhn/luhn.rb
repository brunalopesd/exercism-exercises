=begin
Reverte os numeros
dobrar os numeros dos indices impares!!!
somas todos os numeros 
tem q ser divisivel por 10 
=end

require 'pry'

class Luhn

  def valid?(input)
    return false unless valid_string(input)
  end

  def valid_string(input)
    input.to_i if (input.length > 1 && input != /\D/)
  end


  def double_number(input)
    numbers = input.reverse
  end

  def divisivel_by_10?(input)
    return if input % 10 == 0
  end
  

  def sum_number(input)
    input.slice(2).sum do |a, b = 0|
      a + double_number(b)
    end
  end

end

