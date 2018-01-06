require_relative '../models/calculator'

class MenuController
  attr_reader :calculator

  def initialize
    @calculator = Calculator.new
  end

  def main_menu
    puts "Main Menu"
    puts "Please select the type of calculation"
    puts "1 - Addition"
    puts "2 - Subtraction"
    puts "3 - Multiplication"
    puts "4 - Division"
    puts "5 - View Prior Calculations"
    puts "6 - Exit"
    puts "Enter your selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      create_addition_entry
      main_menu
    when 2
      system "clear"
      create_subtraction_entry
      main_menu
    when 3
      system "clear"
      create_multiplication_entry
      main_menu
    when 4
      system "clear"
      create_division_entry
      main_menu
    when 5
      puts "Good-bye!"
      exit(0)
    else
      system "clear"
      puts "Sorry, that is invalid input"
      main_menu
    end
  end

  def create_addition_entry
    system "clear"
    puts "New Calculation Entry"
    puts "What is the first number?"
    num1 = gets.chomp
    puts "What is the second number?"
    num2 = gets.chomp
    puts " "
    result = num1.to_i + num2.to_i
    puts "The result is: #{result}"
    entry_submenu
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
