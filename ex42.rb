# Exercise 42 Is-A, Has-A, Objects, and Classes
## Animal is-a object look at the extra credit
class Animal
end
## Dog ia a Class copied from Class Animal
class Dog < Animal

  def initialize(name)
    ## Class Dog has a intialize function with parameter name
  @name = name
  end
end

## Cat is a class
class Cat < Animal

  def initialize(name)
    ## Cat has a initialize function with parameter name
    @name = name
  end
end

## person is-a class
class Person

  def initialize(name)
    ## Person has-A initialize function  with parameter name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr-accessor :pet
end

## Employee is-A class
class Employee < Person

  def initialize(name, salary)
    ## ?? what is this strange magic?
    super(name)
    ## the initialize function has-A paramter salary
    @salary = salary
  end

end

## Fish is-A class
class Fish
end

## Salmon is-A class
class Salmon < Fish
end

## Halibut is-A class
class Halibut < Fish
end


## rover is-A Dog Object
rover = Dog.new("Rover")

## satan is-a Dog Object
satan = Dog.new("Satan")

## mary is a Person Object
mary = Person.new("Mary")

## mary has-a pet which is satan
mary.pet = satan

## frank is a Object of Class Employee
frank = Employee.new("Frank", 120000)

## frank has-a pet which is rover
frank.pet = rover

## flipper is-a Object of Class Fish
flipper = Fish.new()

## crouse is-a Object of Class Salmon
crouse = Salmon.new()

## harry is-a Object of Class Halibut
harry = Halibut.new()































