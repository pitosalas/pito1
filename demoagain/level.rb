class Level
  def initialize name, height
    @name = name
    @height = height
    @cars = []
  end

  def height
    @height
  end

  def add car
    @cars << car
  end

  def report
    puts "Level: #{@name} max height: #{@height}"
    @cars.each { |c| c.report }
  end
end
