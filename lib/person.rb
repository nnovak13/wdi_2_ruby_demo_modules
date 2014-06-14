require_relative 'talk'

# Define a Person class
class Person
  # include all of the Talk module methods into this class
  include Talk

  def initialize(fname, lname)
    @first_name, @last_name = fname, lname
    say_it("Hey, we created #{full_name}")
  end 

  def full_name
    "#{@first_name} #{@last_name}"
  end

end       
