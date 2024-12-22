#Write your solution below:
class Animal
  attr_reader :type, :state
  def initialize(input_options)
    @type = input_options[:type]
    @state = input_options[:state] || "awake"
  end

  def eat(food)
    puts "Mmm i'm eating #{food}"
  end
  def sleep
    @state = "asleep"
  end
  def wake
    @state = "awake"
  end
end


animal1 = Animal.new(type: "dog")
p animal1.type
animal1.eat("kibble")

p animal1.state
animal1.sleep
p animal1.state