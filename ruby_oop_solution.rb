#Write your solution below:
class Animal
  attr_reader :type, :state
  def initialize(input_options)
    @type = input_options[:type]
    @state = input_options[:state] || "awake"
  end

  def eat(food)
    if @type == "person" && food == "person"
      puts "I can not eat that food because i am a person"
      return
    end
    puts "Mmm i'm eating #{food}"
  end

  def sleep
    @state = "asleep"
  end
  def wake
    @state = "awake"
  end
end
class Person < Animal
  def initialize(input_options)
    super
    @type = "person"
    @age = input_options[:age]
    @gender = input_options[:gender]
    @name = input_options[:name]
  end
  def greet
    puts "Hi, my name is #{@name} and I am a #{@gender} who is #{@age} years old."
  end
end

animal1 = Animal.new(type: "dog")
p animal1.type
animal1.eat("kibble")

p animal1.state
animal1.sleep
p animal1.state

person1 = Person.new(type: "cow", age: 190, gender: "male", name: "Bessie")
p person1.type

person1.eat("grass")
person1.eat("person")
person1.greet
