require_relative 'entry'

class Calculator
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(addition,subtraction, multiplication, division)
    index = 0
    entries.each do |entry|
      if addition < entry.addition
        break
      end
        index +=1
      end
      entries.insert(index, Entry.new(addition, subtraction, multiplication, division))
    end
end
