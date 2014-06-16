require_relative 'talk'

#Define a person class
class Person
  #Mixin the method from the Talk module
  #include all of the Talk module methods into this class
  include Talk

  attr_accessor :first_name, :last_name

  def initialize(fname, lname)
    @first_name, @last_name = fname, lname
  end

  def full_name
    "#{@first_name} #{last_name}"
  end

end
