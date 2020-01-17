class Car
  def initialize name, height
    @name = name
    @height = height
  end

  def height
    @height
  end

  def report
    puts "#{self.class.to_s} car: #{@name}"
  end
end