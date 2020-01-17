class Creature

  def initialize name
    @name = name
  end

  def greet
    puts "Hello, I am a creature called #{@name}"
  end

  def legs
    0
  end


end


class Dog < Creature

  def greet
    puts "Hello, I am a dog called #{@name}"
  end

  def legs
    4
  end
end

class Bird < Creature
  def greet
    puts "Hello, I am a bird called #{@name}"
  end

  def legs
    2
  end
end

class Chair
  def legs
    4
  end
end

d1 = Dog.new "Spike"
b1 = Bird.new("Tweetie")
c1 = Creature.new "Fido"
ch = Chair.new

x = [d1, b1, c1, ch]

x.each { |elt| puts elt.class }

puts x.map { |kk| kk.legs * 10 }.inspect


a = ('a'..'z').to_a.shuffle[0..10].join
puts a


