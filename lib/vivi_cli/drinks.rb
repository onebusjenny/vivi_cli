require 'pry'
class Drinks::CLI
  
  def call 
    puts "What would you like to drink today?"
    menu
  end
  
  def menu
    puts "Enter the drink category name you want:"
    input = gets.strip
    case input
    when "Milk Tea"
      puts @milk_list
    when "Tea"
      puts @tea_list
    when "Fruit"
      puts @fruit_list
  end
  
end