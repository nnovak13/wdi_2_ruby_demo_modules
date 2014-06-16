require_relative 'fly_lab'
require_relative 'talk'
# All Animals have a name and can move, unlike Plants
# Dogs can do much, other than move.
# People can talk.
# Parrots can talk and fly.
# Bats can fly.

# Root of hierarchy
# Whats the root of all Ruby Objects? BASIC OBJECTS
class Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def move
     "The #{self.class.name}, #{name}, can move "
  end
end

# Dog's can only move
class Dog < Animal
  def move
    super + " on four legs!"
  end
end

# People can move and talk
class Person < Animal
  include Talk
  def move
    super + " on two legs"
  end

end

# Parrot's can move, talk and fly
class Parrot < Animal
  include Fly
  include Talk
  def move
    super + " using wings"
  end
end

# A Bat can move and fly
class Bat < Animal
  include Fly
  def move
    super + " using wings"
  end
end

