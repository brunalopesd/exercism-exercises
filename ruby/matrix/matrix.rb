require 'pry'
class Matrix
  attr_reader :rows, :columns

  def initialize(matrix)
    @matrix = matrix
    @rows = matrix.each_line.map { |row| row.split.collect(&:to_i) }
    @columns = @rows.transpose
  end
end

