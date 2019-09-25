class CLI
  

  def call 
    puts "Welcom to Jenny's portfolio!"
    Scraper.scrape_portfolio_page
    display_projects
    menu
  end
  
  def display_projects
  puts "Which project would you like to see today?"
  
 #.each = iterator. I'm accessing all the objects from the @@all array
 #portolio.all gives me access to @@all array in Portfolio class
  Portfolio.all.each.with_index(1) do |object,index| #setting variables in the iterator, object represents the element in the array
  puts "#{index}. #{object.title}" #.title is a method, created by attr_accessor. From the instance variable: to that object (scope)
  end
end

  def menu

   input = nil #define the variable so it can compare with
 
   while input != "exit" #while input is not equal to exit
    
   puts "Enter the work number you want to see or type exit to leave:"
    input = gets.strip

    if input == "1"
     portfolio1= Scraper.scrape_profile_page("https://www.jennychudesign.com/#/865004006353/")
      puts "#{portfolio1[:description]}"
    elsif input.downcase == "exit"
      puts "goodbye"
    elsif input.downcase == "list"
      display_projects
    else
      puts "you bored? Sorry I don't understand what you mean. Type exit to leave or list to see it again"
      
    end
  end
end

# def print_list(list)
#   list.each_with_index do |work,index|
#     puts "#{index+1}. #{work.name}"
#   end
# end

def thankyou
  puts "Isn't everything so cool? shoot me an email if you want to give me a job. Byebye."
end
end
  