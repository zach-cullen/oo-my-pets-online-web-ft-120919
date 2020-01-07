class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species)
    @name = name
    @species = "human"
  end
  
  def say_species
    puts @species
  end
  
  # class methods
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.count()
  end
end