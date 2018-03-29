class Owner

attr_accessor :pets
attr_reader :species

@@all = []

# Class Methods

  # can initialize an owner
  def initialize(name)
    @name = name
    @@all << self
  end

  # keeps track of the owners that have been created
  def self.all
    @@all
  end

  # can count how many owners have been created
  def self.count
    @@all.count
  end

  # can reset the owners that have been created
  def self.clear_all
    @@all.clear
  end

# Instance Methods

  def species
    # initializes with a species
    # can't change its species
    # can say its species

  end

  def name(name = nil)
    # can have a name
    @name = name
  end

  def pets
    # is initialized with a pets attribute as a hash with 3 keys
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def buy_fish
    # buy a fish that is an instance of the Fish class
    # knows about its fishes

  end

  def buy_cat
    # can buy a cat that is an instance of the Cat class
    # knows about its cats

  end

  def buy_dog
    # can buy a dog that is an instance of the Dog class
    # knows about its dogs

  end

  def walk_dogs
    # walks the dogs which makes the dogs' moods happy

  end

  def play_with_cats
    # plays with the cats which makes the cats moods happy

  end

  def feed_fish
    # feeds the fishes which makes the fishes' moods happy

  end

  def sell_pets
    # can sell all its pets, which make them nervous

  end

  def list_pets
    # can list off its pets

  end



end
