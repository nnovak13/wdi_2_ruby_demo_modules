## Using Modules as Mixins

A Mixin is a Design Pattern that will provide methods that can be _included_ into a Class.

We can use Ruby modules as a Mixin.

A Ruby module is defined like a class. Use the __module__ keyword instead of __class__. _Note: In Ruby one can NOT create instances/objects of a module_

##### Create a file lib/talk.rb
Create a Talk __module__ that will have a method _say_it_. The _say_it_
method will output it's argument to the OSX _say_ command. 

In the terminal type 'say this is tuesday'. Cool, huh.  

```
  # module is a keyword
  # module is like a class, BUT you CAN NOT create an instance of a module.
  module Talk                                 
                                              
    # Output msg using the OSX 'say' command  
    def say_it(msg)
      %x{ say #{msg} }                        
    end

    # Note: %x{ some *nix command } is ruby's way of 
    # invoking a *nix command.                            
                                       
  end                                         
```

##### Create a file lib/person.rb
Create a person class.  And __include__ the Talk module.  

We are going to use the Ruby __include__ keyword to _Mixin_ the methods
defined in the Talk module into the Person class.  

```
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
```

##### Create a file bin/say_it.rb and run it.

```
  require_relative '../lib/person' 
                                   
  tom = Person.new('Tom', 'Smith') 
```


### Lab
Modify the lib/animal.rb file so that 

* Create a module that will have a climb method.  
* It will just "puts climb"
* It 