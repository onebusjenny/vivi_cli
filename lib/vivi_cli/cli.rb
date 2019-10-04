class CLI
  

  def call 
    puts "Welcome to Jenny's portfolio!"
    Scraper.scrape_portfolio_page 
    display_projects
    menu
  end
  
  def display_projects
    puts "Which project would you like to see today?"
    Portfolio.all.each.with_index(1) do |object,index| 
    puts "#{index}. #{object.title}" 
      end
  end

  def menu

   input = nil 
   while input != "exit" 
    
    puts "Enter the work number you want to see or type exit to leave:"
    input = gets.strip
    
    ending_number = Portfolio.all.count 
   
   if (1..ending_number).include?(input.to_i) 
      
      index_number = input.to_i - 1

      project_object = Portfolio.all[index_number]  
      Scraper.scrape_profile_page (project_object) 
      
      puts project_object.title
      puts project_object.description 

    elsif input.downcase == "exit"
      puts "goodbye"
    elsif input.downcase == "list"
      display_projects
    else
      puts "Sorry I don't understand what you mean. Type exit to leave or list to see it again"
      
      end
    end
  end

  def thankyou
    puts "Isn't everything so cool? shoot me an email if you want to give me a job. Byebye."
  end

end
  