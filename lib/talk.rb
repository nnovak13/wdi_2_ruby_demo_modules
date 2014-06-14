# module is a keyword
# module is like a class, BUT you CAN NOT create an instance of a module.

module Talk

  # Output msg using the OSX 'say' command
  def say_it(msg)
    %x{ say #{msg} }
  end
end
