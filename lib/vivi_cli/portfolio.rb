


class Portfolio
  attr_accessor :title, :catoegory, :description, :link
  
  @@all = []
  
  def initialize(project_hash)
    @title = project_hash[:title]
    @link = project_hash[:link]
    # project_hash.each do |data,value|
    #  self.send(("#{data}=",value))
    @@all << self
  end
end
  
  
def self.create_project_list(project_array)
   project_array.each do |project|
     Portfolio.new(project)
   end
end

 def self.all
   @@all
 end
  
end