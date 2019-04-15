require 'pry'
class Drinks::CLI
  
  def call 
    puts "What would you like to drink today?"
     puts @category_list
    menu
  end
  
  def menu

   input = nil
   while input != "exit"
   puts "Enter the drink category name you want or type menu to see the list again or type exit to leave:"
    input = gets.strip.downcase
    case input
    when "Milk Tea"
      puts @milk_list
    when "Tea"
      puts @tea_list
    when "Fruit"
      puts @fruit_list
    when "menu"
      menu
    else
      puts "Not sure what you want, try it, type list or exit"
  end
  end
end

def thankyou
  puts "thank you for your order!"
end

end