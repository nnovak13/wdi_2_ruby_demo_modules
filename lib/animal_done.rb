# All Animals can move, unlike Plants
# Dogs can't talk or fly, poor doggies
# People can talk.
# Parrots can talk and fly.
# Bats can fly

# Root of hierarchy
# Whats to the root of all Ruby Objects?

class Animal
  def move
    puts "i can move "
  end
end

# Dog's can only ove
class Dog < Animal
  def move
    super + " on four legs!"
  end
end

# People can move and talk
class Person < Animal

  def move
    super + " on two legs"
  end

end

# Parrot's can move, talk and fly
class Parrot
  def move
    super + " using my wings"
  end
end

# A Bat can move and fly
class Bat < Mammal

end

