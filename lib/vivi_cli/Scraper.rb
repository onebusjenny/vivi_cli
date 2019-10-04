class Scraper

  def self.scrape_portfolio_page 
    portfolio = Nokogiri::HTML(open("https://www.jennychudesign.com/")) 
    
    portfolio.css("div.project-item")[0..11].each do |work| 
      project= { 
        :title => work.css("div h1").text, 
        :link => "https://www.jennychudesign.com"+ work.css("span").first.attr("data-full-url") 
      }

      Portfolio.new(project) 
      
    end
  end


  def self.scrape_profile_page(object)   
    profile = Nokogiri::HTML(open(object.link)) 
      object.description = profile.css(".body").text
      object

  end
end