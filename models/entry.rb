require_relative 'Entry'

class Entry

  attr_accessor :addition, :subtraction, :multiplication, :division

  def initialize(addition, subtraction, multiplication, division)
    @addition = addition
    @subtraction = subtraction
    @multiplication = multiplication
    @division = division
  end

  def to_s
    "Addition: #{addition}\nSubtraction: #{subtraction}\nMultiplication: #{multiplication}\nDivision: #{division}"
  end
end
