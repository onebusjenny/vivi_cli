class Portfolio
  attr_accessor :title,:description, :link
  
  @@all = [] #for the class
  
  def initialize(project_hash)
    @title = project_hash[:title]
    @link = project_hash[:link]
    @description = project_hash[:description]
   
    @@all << self #gives me the object,instance of the class, saving all theinstances in the array
  end
  
  
  def self.create_project_list(project_array)
    project_array.each do |project|
      Portfolio.new(project)
    end
  end

  def self.all #allowing us to get access to @@all from other classes
   @@all
  
  end
 end