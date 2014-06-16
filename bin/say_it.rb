require_relative '../lib/person'

tom = Person.new("Tom", "Smith")

tom.say_it("#{tom.first_name} #{tom.last_name}")
