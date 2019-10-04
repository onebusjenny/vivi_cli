class Scraper

  def self.scrape_portfolio_page #This is a class method, to make it the class method
    portfolio = Nokogiri::HTML(open("https://www.jennychudesign.com/")) #It's opening the website, parse page
   
    projects = [] #This is a local instance, an empty array
    #I'm scraping my website, looking at this div with the class name "project-item"
    #css method returns all values as an array, on the array that's been return from the css method,
    #[o..11] I'm accessing the array, index range from 0 to 11, accessing the element that's within that range
    portfolio.css("div.project-item")[0..11].each do |work| #nod sets 
      project= { #creating a variable "project", it's value is hash
        :title => work.css("div h1").text, #scraping individual attribute from the website, title and link
        :link => "https://www.jennychudesign.com"+ work.css("span").first.attr("data-full-url") #string concatanation - lookup!
      }

      Portfolio.new(project) #creating a project object
      
    end
  end


  def self.scrape_profile_page(object) #adding attribute to that object
    
     
    profile = Nokogiri::HTML(open(object.link)) #it's opening up
      object.description = profile.css(".body").text
      object
  

  end
end