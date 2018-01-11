# do composition using modules and a concept called mixins
=begin
  create a module with functions that are common to classes
  and then include them in your class similar to using a require.
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
