require 'nokogiri'
requite 'open-uri'


module VIVI
  class Menu
   attr_accessor :Vivi_Special, :Flavored_Tea, :Milk_Tea, :Fresh_Fruit, :Slush, :Float_Yakult, :Fresh_Milk
   
   def self.list_names
     self.scrape_list
   end
   
   def self.scrape_list
     menu_list = []
     doc = Nokogiri::HTML(open(http://www.vivibubbletea.com/index.php))
     menu = doc.search('div.hone_menu03')
   end
   
   
end