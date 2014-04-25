# Define a module used as a Mixin.
# I'll "include" it in every class that wants to talk.

# module is a keyword
# module is like a class, BUT you CAN NOT create an instance of a module.

# Talk#say_something
module Talk
  def say_something(phrase)
    # call the OSX say command
    %x{say #{phrase} }
  end
end

# Define a class
class MyTalkyClass
  # Here's, the magic!!!
  # include all of the Talk module methods into this classoo
  include Talk
end

# Instantiate the class
my_class = MyTalkyClass.new
puts "MyTalkyClass#say will say #{my_class.say_something("hello")} "

# WARNING: ADVANCED TOPIC #################
# Enumerables
# After including the Enumerable module we'll define the each method
# This allows for other enumerables like map to work on this class
class BunchOfIntegers

    include Enumerable

    attr_accessor :num_array

    def initialize(min_value, max_value)
      @num_array = (min_value..max_value).to_a
    end

    def each(&block)
        @num_array.each do |member|
            yield(member)
            # block.call(member)
        end
    end

end

my_ints = BunchOfIntegers.new(1, 4)
my_ints.each { |value| p "*** #{value} ***"}

puts my_ints.map{ |value| value*value }.join(' : ')

puts my_ints.find { |val| val == 3}




