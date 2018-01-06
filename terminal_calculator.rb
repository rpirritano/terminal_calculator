require_relative 'controllers/menu_controller'

menu = MenuController.new

system "clear"
puts "Welcome to your Calculator!"

menu.main_menu
