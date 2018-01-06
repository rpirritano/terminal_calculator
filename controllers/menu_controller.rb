require_relative '../models/calculator'

class MenuController
  attr_reader :calculator

  def initialize
    @calculator = Calculator.new
  end

  def main_menu
    puts "Main Menu"
    puts "1 - Input caclculation"
    puts "2 - View Prior Calculations"
    puts "3 - Exit"
    puts "Enter your selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      create_entry
      main_menu
    when 2
      system "clear"
      view_prior_calculations
      main_menu
    when 3
      puts "Good-bye!"
      exit(0)
    else
      system "clear"
      puts "Sorry, that is invalid input"
      main_menu
    end
  end

  def create_entry
    system "clear"
    puts "New Calculation Entry"
    print "Addition: "
    addition = gets.chomp
    print "Subtraction: "
    subtraction = gets.chomp
    print "Multiplication: "
    multiplication = gets.chomp
    print "Division: "
    division = gets.chomp

    calculator.add_entry(addition, subtraction, multiplication, division)

    system "clear"
    puts "New Calculartion saved"
  end

  def view_prior_calculations
    calculator.entries.each do |entry|
      system "clear"
      puts entry.to_s
      entry_submenu(entry)
    end

    system "clear"

    puts "End of prior calculations"
  end

  def delete_entry(entry)
    calculator.entries.delete(entry)
    puts "#{entry.addition} has been deleted"
  end

  def entry_submenu(entry)
    puts "n - next entry"
    puts "d - delete entry"
    puts "m - return to main menu"

    selection = gets.chomp

    case selection
    when "n"
    when "d"
      delete_entry(entry)
    when "m"
      system "clear"
      main_menu
    else
      system "clear"
      puts "#{selection} is not a valid input"
      entry_submenu(entry)
    end
  end
end
