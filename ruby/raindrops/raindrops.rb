require 'pry'

class Raindrops
  def self.convert(number)
    values = ''
    values += 'Pling' if number % 3 == 0
    values += 'Plang' if number % 5 == 0
    values += 'Plong' if number % 7 == 0
    return number.to_s if values.empty?
    values
  end
end


