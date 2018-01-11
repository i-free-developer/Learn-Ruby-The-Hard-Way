# Exercise 44 Inheritance Versus Composition
# Implicit Inheritance

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit
son.implicit

# Override Explicitly

class Parents

  def override()
    puts "PARENT override()"
  end
end

class Childs < Parents
  def override()
    puts "CHILD override()"
  end
end

dads = Parents.new()
sons = Childs.new()

dads.override
sons.override

# Alter Before or After

class ParentAlter
  def altered()
    puts "PARENT altered"
  end
end

class ChildAlter < ParentAlter
  def altered()
    puts "CHILD, BEFORE PARENT altered() &&&"
    super() # get the method from parent class
    puts "CHILD, AFTER PARENT altered() &&&"
  end

end

dad_alter = ParentAlter.new()
son_alter = ChildAlter.new()

dad_alter.altered
son_alter.altered

# All three combined

class ParentAll
  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit"
  end

  def altered()
    puts "PARENT altered"
  end
end

class ChildAll < ParentAll
  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad_all = ParentAll.new()
son_all = ChildAll.new()

dad_all.implicit()
son_all.implicit()

dad_all.override()
son_all.override()

dad_all.altered()
son_all.altered()

# Composition, exlpoit inhenritance by calling functions in a module

class Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class ChildCall
  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son_call = ChildCall.new()

son_call.implicit()
son_call.override()
son_call.altered()
























