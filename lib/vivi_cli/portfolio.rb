


class Portfolio
  attr_accessor :title,:description, :link
  
  @@all = []
  
  def initialize(project_hash)
    @title = project_hash[:title]
    @link = project_hash[:link]
    @description = project_hash[:description]
    # project_hash.each do |data,value|
    #  self.send(("#{data}=",value))
    @@all << self
end
  
  
def self.create_project_list(project_array)
   project_array.each do |project|
     Portfolio.new(project)
   end
  
  end

 def self.all
   @@all
  #  binding.pry
 end
 
end