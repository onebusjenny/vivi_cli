
class Scraper
  
  
  def self.scrape_name(url)
    works = []
    portfolio = Nokogiri::HTML(open(url))
    
    portfolio.css(".project title").each do |work|
      work_hash = {:name =>work.css(".h2").text}
      
      works << work_hash
    end
    works
  end
end


