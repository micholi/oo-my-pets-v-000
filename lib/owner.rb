require 'pry'

class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

# Class Methods

  # can initialize an owner ??
  # initializes with a species
  # can't change its species
  # can have a name
  # is initialized with a pets attribute as a hash with 3 keys
  def initialize(species, name = nil)
    @species = species
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  # keeps track of the owners that have been created
  def self.all
    @@all
  end

  # can count how many owners have been created - FAILING
  def self.count
    @@all.count
  end

  # can reset the owners that have been created - FAILING
  def self.clear_all
    @@all.clear
  end

# Instance Methods

  def say_species
  #can say its species
    "I am a #{species}."
  end

  def buy_fish(name)
  # buy a fish that is an instance of the Fish class
  # knows about its fishes
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
  # can buy a cat that is an instance of the Cat class
  # knows about its cats
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
  # can buy a dog that is an instance of the Dog class
  # knows about its dogs
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
  # walks the dogs which makes the dogs' moods happy
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
  # plays with the cats which makes the cats moods happy
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
  # feeds the fishes which makes the fishes' moods happy
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
  # can sell all its pets, which make them nervous

  end

  def list_pets
  # can list off its pets

  fish_num = pets[:fishes].count
  dog_num = pets[:dogs].count
  cat_num = pets[:cats].count

    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."

  end

end
