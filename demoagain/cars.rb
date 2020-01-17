
require_relative "./garage.rb"
require_relative "./level.rb"
require_relative "./car.rb"
require_relative "./police.rb"

g = Garage.new("Ten")
l1 = Level.new("1", 150)
l2 = Level.new("2", 91)
g.add_level(l1)
g.add_level(l2)

c1 = Car.new("Buick", 90)
c2 = Car.new("Toyotal", 80)
p1 = Police.new("Waltham", 110)

g.car_arrives(c1)
g.car_arrives(c2)
g.car_arrives(p1)

g.report


