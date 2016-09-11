class Animal
  attr_accessor :name

  def initialize
    @name = ""
  end

  def eat(animal)
    puts "#{@name} eats #{animal.name}"
  end
end

class Cat < Animal
  def initialize
    @name = "cat"
  end
end

class Fish < Animal
  def initialize
    @name = "fish"
  end
end


cat = Cat.new
fish = Fish.new
puts cat.eat(fish)