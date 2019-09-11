require 'open-uri'
require 'nokogiri'
require 'pry'
require_relative 'portfolio'

class Scraper
  
  

  def self.scrape_portfolio_page
    portfolio = Nokogiri::HTML(open("https://www.jennychudesign.com/"))
   
    porjects = []

    portfolio.css("div.project-item").each do |work|
      project= {
        :title => work.css("div h1").text, :link => work.attr("data-dynamic-href")
      }

     
      # projects << project
      Portfolio.new(project)
    end
    binding.pry
  end


  def self.scrape_profile_page(profile_url)
    project_profile = {}
    profile = Nokogiri::HTML(html)

    profile.css("div.project-item clearfix").each do |more_information|
      # profile = {:title => more_information.css("div.h1").text,
      # :category => more_information.css("div.p").text,
      # :description => more_information.css("div.p").text
      # }
    end

    project_profile 

  end
end

# Scraper.scrape_portfolio_page
