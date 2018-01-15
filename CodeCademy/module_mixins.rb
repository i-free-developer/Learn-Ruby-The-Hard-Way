# do composition using modules and a concept called mixins
=begin
  create a module with functions that are common to classes
  and then include them in your class similar to using a require.
=end

=begin

 When a module is used to mix additional behavior and information into a class,
 it's called a mixin. Mixins allow us to customize a class without having to rewrite code!
 include mixes a module's methods in at the instance level (allowing instances of
 a particular class to use the methods),
 the extend keyword mixes a module's methods at the class level.
 This means that class itself can use the methods, as opposed to instances of the class.
=end

module Other
  def override()
    puts "Other override()"
  end

  def implicit()
    puts "Other implicit()"
  end

  def  Other.altered()
    puts "Other altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
