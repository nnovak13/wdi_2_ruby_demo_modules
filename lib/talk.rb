#Defined a module Talk.
#We are going to use this as a Mixin
# module is like a class, BUT you CAN NOT create an instance of a module.

module Talk

  #Say it out using the OSX 'say' command
  def say_it(msg)
    %x{say '#{msg}'}
  end

end
