require_relative 'entry'

class Calculator
  attr_reader :entries

  def initialize
    @entries = []
  end

  def addition_entry(addition)
    index = 0
    entries.each do |entry|
      if addition < entry.addition
        break
      end
        index +=1
      end
      entries.insert(index, Entry.new(addition))
    end

def subtraction_entry(subtraction)
  index = 0
  entries.each do |entry|
    if subtraction < entry.subtraction
      break
    end
      index +=1
    end
    entries.insert(index, Entry.new(subtraction))
  end

  def multiplication_entry(multiplication)
    index = 0
    entries.each do |entry|
      if multiplicationn < entry.multiplication
        break
      end
        index +=1
      end
      entries.insert(index, Entry.new(multiplication))
    end

    def division_entry()
  index = 0
  entries.each do |entry|
    if division < entry.division
      break
    end
      index +=1
    end
    entries.insert(index, Entry.new(division))
  end
end
