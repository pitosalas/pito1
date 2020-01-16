class School
  def initialize name
    @name = name
  end

  def to_s
    "School name is #{@name}"
  end

  def name
    @name
  end
end

s1 = School.new("Brandeis")
puts s1.name

class Duck
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

d1 = Duck.new("Quacker")

puts d1.name

a1 = [d1, s1, d1, s1, d1, s1]
puts a1.sizE

a1.each { |a| puts a.name }
