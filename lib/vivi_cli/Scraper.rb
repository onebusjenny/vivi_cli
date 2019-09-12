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
    project_profile = []
    
    profile = Nokogiri::HTML(open(profile_page))

    profile.css("div.project-item clearfix").each do |more_information|

      profile = {:title => more_information.css("div h1").text,
      :description => more_information.css("div p").text
      }
      Portfolio.new(project)
      binding.pry
    end

    # project_profile 

  end
end

# Scraper.scrape_profile_page
