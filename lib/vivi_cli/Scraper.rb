require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative 'portfolio'

class Scraper
  
  

  def self.scrape_portfolio_page
    portfolio = Nokogiri::HTML(open("https://www.jennychudesign.com/"))
   
    projects = []

    portfolio.css("div.project-item")[0..11].each do |work|
      project= {
        :title => work.css("div h1").text, 
        :link => work.attr("data-dynamic-href")
      }
      # binding.pry
      
      # projects << project
      Portfolio.new(project)
      
    end

  end


  def self.scrape_profile_page(profile_page)
    project_profile = {}
    profile = Nokogiri::HTML(open(profile_page))
    # # binding.pry
    # profile.css("div.meta").each do |more_information|
    #   profile = {
    #   :title => more_information.css("div h1").text,
    #   :category => more_information.css(".body strong").text,
    #   :description => more_information.css(".p").text
    #   }
      
    #   Portfolio.new(profile)
      
      project_profile[:title] = profile.css("h1").text
      project_profile[:category] = profile.css(".body strong").text
      project_profile[:description] = profile.css("p").text
      project_profile
  

  end
end

# Scraper.scrape_profile_page
# def self.scrape_profile_page(profile_slug)
#     student = {}
#     profile_page = Nokogiri::HTML(open(profile_slug))
#     links = profile_page.css(".social-icon-container").children.css("a").map { |el| el.attribute('href').value}
#     links.each do |link|
#       if link.include?("linkedin")
#         student[:linkedin] = link
#       elsif link.include?("github")
#         student[:github] = link
#       elsif link.include?("twitter")
#         student[:twitter] = link
#       else
#         student[:blog] = link
#       end
#     end