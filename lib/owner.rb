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
    @pets.select {|pet| pet.class == Cat}
  end
  
  def dogs 
    @pets.select {|pet| pet.class == Dog}
  end
  
  def buy_cat(cat_name)
    this_cat = Cat.all.find {|cat| cat.name == cat_name}
    this_cat.owner = self
    @pets << this_cat
  end
  
  def buy_dog(dog_name)
    this_dog = Dog.all.find {|dog| dog.name == dog_name}
    this_dog.owner = self
    @pets << this_dog
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