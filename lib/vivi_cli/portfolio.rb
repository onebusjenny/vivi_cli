class Portfolio
  attr_accessor :title,:description, :link
  
  @@all = [] #for the class
  
  def initialize(project_hash)
    @title = project_hash[:title] #setting attribute in the object, instance variable is tie to the object, local variable enclose within the method
    @link = project_hash[:link]
    @description = project_hash[:description]
   
    @@all << self 
    #gives me the object,instance of the class, saving all instances in the array
    #it gives out object that the method was called on
    #instance in our class is to use to call our method
  end
  
  
  def self.create_project_list(project_array)
    project_array.each do |project| #block scope
      Portfolio.new(project)
    end
  end

  def self.all #allowing us to get access to @@all from other classes
   @@all
  
  end
 end