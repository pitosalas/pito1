class Garage
  def initialize(name)
    @name = name
    @levels = []
  end

  def add_level(l)
    @levels << l
  end

  def car_arrives(car)
    @levels.each do
      |level| 
      if (level.height <= car.height) 
        next
      end
      level.add car
      break
    end
  end

  def report
    puts "Garage #{@name}"
    @levels.each { |l| l.report }
  end
end 
