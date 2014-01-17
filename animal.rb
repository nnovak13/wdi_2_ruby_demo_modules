# module # defines a module, really a class.

require_relative './lib/talk'

# Inheritance
require_relative 'climbing'

# Define an parent Animal class
class Animal
  def move
    puts "i can move!"
  end
end

# Define a Mammal class that inherits from Animal
class Mammal < Animal

  include Talk

  def eat
    say "i can eat! yum yum yum"
  end
  def speak
    say "i can speak"
  end
end

# Define a Monkey class that inherits from Mammal
class Monkey < Mammal
  include Climbing

  def swing
    say "i can swing!"
  end
  def speak
    say "HoWwOo WHoWo"
  end
end

# Define a Dog class that inherits from Mammal
class Dog < Mammal
  def speak
    super
    say "WHOOF"
  end
end

# Instantiate a Monkey and show off what it can do
puts  "\nI'm a Monkey and I can:"
timmy = Monkey.new
timmy.move
timmy.eat
timmy.swing
timmy.speak
timmy.climb

# Instantiate a Dog and show off what it can do
puts  "\nI'm a Dog and I can:"
sammy = Dog.new
sammy.move
sammy.eat
sammy.speak
