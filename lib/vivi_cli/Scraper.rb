
class Scraper
  
  
  def self.scrape_name(url)
    drinks = []
    menu = Nokogiri::HTML(open(url))
    
    menu.css("div.circle_box").each do |drink|
      drink_hash = {:name =>drink.css(".p2").text}
      
      drinks << drink_hash
    end
    drinks
  end
end