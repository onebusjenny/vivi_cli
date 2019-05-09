class ViviCli::CLI
  
  def call 
    puts "What would you like to drink today?"
    menu
  end
  
  def menu
  puts "1. Vivi Special Signature"
  puts "2. Flavored Tea"
  puts "3. Milk Tea"
  puts "4. Fresh Fruit"
  puts "5. Slush"
  puts "6. Float and Yakult "
  puts "7. Fresh Milk"
  
   input = nil
   while input != "exit"
   puts "Enter the drink category name you want or type menu to see the list again or type exit to leave:"
    input = gets.strip.downcase
    case input
    when "1"
     menu1= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=6")
     list1 = Menu.create_drink_list(menu1)
      print_list(list1)
    when "2"
      menu2= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=2")
      list2 = Menu.create_drink_list(menu2)
      print_list(list2)
    when "3"
      menu3= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=1")
      list3 = Menu.create_drink_list(menu3)
      print_list(list3)
    when "4"
      menu4= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=5")
      list4 = Menu.create_drink_list(menu4)
      print_list(list4)
    when "5"
      menu5= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=3")
      list5 = Menu.create_drink_list(menu5)
      print_list(list5)
    when"6"
     menu6= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=4") 
     list6 = Menu.create_drink_list(menu6)
      print_list(list6)
    when "7"
     menu7= Scraper.scrape_name("http://www.vivibubbletea.com/products.php?cat=7")
      list7 = Menu.create_drink_list(menu7)
      print_list(list7)
    else
      puts "Not sure what you want, try it, type menu or exit"
    end
  end
end

def print_list(list)
  list.each_with_index do |drink,index|
    puts "#{index+1}. #{drink.name}"
    puts "#{drink.image}"
  end
end

def thankyou
  puts "thank you for your order!"
end

  end