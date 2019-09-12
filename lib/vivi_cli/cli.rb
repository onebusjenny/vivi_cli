class CLI
  

  def call 
    puts "Welcom to Jenny's portfolio!"
    Scraper.scrape_portfolio_page
    projects
    
  end
  
  def projects
  puts "Which project would you like to see today?"
  
 
  Portfolio.all.each.with_index(1) do |object,index|
    # binding.pry
  puts "#{index}. #{object.title}" 
  end

  
  
  # puts "1. Logo Design – Los Angeles County Museum of Art"
  # puts "2. Blackout 2003"
  # puts "3. Art Design Chicago"
  # puts "4. Platonic Solid"
  # puts "5. Honey Bee"
  # puts "6. Jury Service Form Redesign "
  # puts "7. A Dream"
  # puts "8. Alex's Lemonade Stand Logo Design"
  # puts "9. Architecture Lecture Series"
  # puts "10. Bubble Tea Book – How to make a bubble tea"
  # puts "11. Logo Re–Design/ Timeless Toys"


   input = nil
 
   while input != "exit"
    
   puts "Enter the work number you want to see or type exit to leave:"
    input = gets.strip.downcase
    case input
    when "1"
     portfolio1= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/865004006353/")
     list1 = Portfolio.create_project_list(portfolio1)
      print_list(list1)
      binding.pry
    when "2"
      portfolio2= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/blackout-2003/")
      list2 = Portfolio.create_project_list(portfolio2)
      print_list(list2)
    when "3"
      portfolio3= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/new-gallery-2/")
      list3 = Portfolio.create_project_list(portfolio3)
      print_list(list3)
    when "4"
      portfolio4= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/new-gallery/")
      list4 = Portfolio.create_project_list(portfolio4)
      print_list(list4)
    when "5"
      portfolio5= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/honey-bee/")
      list5 = Portfolio.create_project_list(portfolio5)
      print_list(list5)
    when"6"
      portfolio6= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/jury-service-form-redesign/") 
     list6 = Portfolio.create_project_list(portfolio6)
      print_list(list6)
    when "7"
      portfolio7= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/a-dream/")
      list7 = Portfolio.create_project_list(portfolio7)
      print_list(list7)
    when "8"
      portfolio8= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/alexs-lemonade-stand-logo-design/")
      list8 = Portfolio.create_project_list(portfolio8)
      print_list(list8)
    when "9"
      portfolio9= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/architecture-lecture-series/")
      list9 = Portfolio.create_project_list(portfolio9)
      print_list(list9)
    when"10"
      portfolio10= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/iii/") 
     list10 = Portfolio.create_project_list(portfolio10)
      print_list(list10)
    when "11"
      portfolio11= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/logo-re-design-timeless-toys/")
      list11 = Portfolio.create_project_list(portfolio11)
      print_list(list11)

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
  