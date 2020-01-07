class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def cats
    @pets.select{|pet| pet.class == Cat}
  end
  
  # class methods
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
end