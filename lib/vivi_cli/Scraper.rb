
class Scraper
  
  

  def self.scrape_portfolio_page(index_url)
    portfolio = Nokogiri::HTML(open(index_url))
   
    porjects = {}

    portfolio.css(".project-item").each do |project|
      projects[title] = {
        :title => project.css(".h1").text
        :image => project.css("div.thumbnail loaded").attribute("data-src").value
      }
      projects << project
    end
    projects
  end

  def self.scrape_profile_page(profile_url)
    project_profile = {}
    profile = Nokogiri::HTML(html)

    profile.css("div.project-item clearfix").each do |more_information|
      :title => more_information.css(".h1").text
      :category => more_information.css(".p").text
      :description => more_information.css(".p").text
    end

    project_profile 

  end
end


