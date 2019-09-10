class ViviCli::CLI
  
  def call 
    puts "Welcom to Jenny's portfolio!"
    menu
  end
  
  def menu
  puts "Which project would you like to see today?"
  
  puts "1. Logo Design – Los Angeles County Museum of Art"
  puts "2. Blackout 2003"
  puts "3. Art Design Chicago"
  puts "4. Platonic Solid"
  puts "5. Honey Bee"
  puts "6. Jury Service Form Redesign "
  puts "7. A Dream"
  puts "8. Alex's Lemonade Stand Logo Design"
  puts "9. Architecture Lecture Series"
  puts "10. Bubble Tea Book – How to make a bubble tea"
  puts "11. Logo Re–Design/ Timeless Toys"
  puts "12. Lecture Series: The Changing Face of Typographic Design"


   input = nil
   while input != "exit"
   puts "Enter the work number you want to see or type exit to leave:"
    input = gets.strip.downcase
    case input
    when "1"
     menu1= Scraper.scrape_name("https://www.jennychudesign.com/#/865004006353/")
     list1 = Menu.create_drink_list(menu1)
      print_list(list1)
    when "2"
      menu2= Scraper.scrape_name("https://www.jennychudesign.com/#/blackout-2003/")
      list2 = Menu.create_drink_list(menu2)
      print_list(list2)
    when "3"
      menu3= Scraper.scrape_name("https://www.jennychudesign.com/#/new-gallery-2/")
      list3 = Menu.create_drink_list(menu3)
      print_list(list3)
    when "4"
      menu4= Scraper.scrape_name("https://www.jennychudesign.com/#/new-gallery/")
      list4 = Menu.create_drink_list(menu4)
      print_list(list4)
    when "5"
      menu5= Scraper.scrape_name("https://www.jennychudesign.com/#/honey-bee/")
      list5 = Menu.create_drink_list(menu5)
      print_list(list5)
    when"6"
     menu6= Scraper.scrape_name("https://www.jennychudesign.com/#/jury-service-form-redesign/") 
     list6 = Menu.create_drink_list(menu6)
      print_list(list6)
    when "7"
     menu7= Scraper.scrape_name("https://www.jennychudesign.com/#/a-dream/")
      list7 = Menu.create_drink_list(menu7)
      print_list(list7)
    when "8"
     menu8= Scraper.scrape_name("https://www.jennychudesign.com/#/alexs-lemonade-stand-logo-design/")
      list8 = Menu.create_drink_list(menu8)
      print_list(list8)
    when "9"
      menu9= Scraper.scrape_name("https://www.jennychudesign.com/#/architecture-lecture-series/")
      list9 = Menu.create_drink_list(menu9)
      print_list(list9)
    when"10"
     menu10= Scraper.scrape_name("https://www.jennychudesign.com/#/iii/") 
     list10 = Menu.create_drink_list(menu10)
      print_list(list10)
    when "11"
     menu11= Scraper.scrape_name("https://www.jennychudesign.com/#/logo-re-design-timeless-toys/")
      list11 = Menu.create_drink_list(menu11)
      print_list(list11)
    when "12"
     menu12= Scraper.scrape_name("https://www.jennychudesign.com/#/new-gallery-1/")
      list12 = Menu.create_drink_list(menu12)
      print_list(list12)
    else
      puts "you bored? type exit to leave"
    end
  end
end

def print_list(list)
  list.each_with_index do |work,index|
    puts "#{index+1}. #{work.name}"
  end
end

def thankyou
  puts "Isn't everything so cool? shoot me an email if you want to give me a job. Byebye."
end

  end