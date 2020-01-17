class Car
  def initialize name, height
    @name = name
    @height = height
  end

  def height
    @height
  end

  def report
    puts "Car #{@name}"
  end
end