class Menu
  attr_accessor :name
  
  @@all = []
  
  def initialize(project_hash)
    work_hash.each do |data|
     self.send(("#{data}="))
    @@all << self
  end
end
  
  
def self.create_work_list(project_array)
   work_array.each do |work|
     Menu.new(work)
   end
end

 def self.all
   @@all
 end
  
end