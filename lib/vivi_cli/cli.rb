class CLI
  

  def call 
    puts "Welcome to Jenny's portfolio!"
    Scraper.scrape_portfolio_page #class method- calling the mehod on the class
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
 
   while input != "exit" #while input is not equal to exit, looping
    
    puts "Enter the work number you want to see or type exit to leave:"
    input = gets.strip
    #if the input is within our range
    ending_number = Portfolio.all.count #the total number of the portfolio object in my array
    #if the input is within the range
   if (1..ending_number).include?(input.to_i) #if the user input is = to this range
      #input is coming in as a string, convert into an integer to see if it's include in the range of integers
      #index number to select the object i want
      index_number = input.to_i - 1


      project_object = Portfolio.all[index_number]  #selecting the user selected project a specific project within that array,pulling out the sepcific project from the array
      Scraper.scrape_profile_page (project_object) #This is displaying the 
      
      puts project_object.title
      puts project_object.description #access a key for a hash #instance of the project class

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
  