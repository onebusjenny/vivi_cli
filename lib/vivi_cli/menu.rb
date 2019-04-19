require 'nokogiri'
requite 'open-uri'

  class Menu
   attr_accessor :name, :image
   
   @@all = []
   
   def initialize(drink_hash)
     drink_hash.each do |attribute,data|
      self.send(("#{attribute}="), data)
     @@all << self
   end
   
   
 def self.create_drink_list(drink_array)
    drink_array.each do |drink|
      Menu.new(drink)
    end
 end
 
  def self.all
    @@all
  end
   
end