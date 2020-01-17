require 'yaml/store'

class Creature
  def initialize
    @name = "Brandeis"
    @schools = ["Science", "Business"]
  end
end

store = YAML::Store.new('my_database.yaml') # Create or Load my_database.yaml file

# Get Store Data
my_var = store.transaction{store[:my_var]}
a_creature = Creature.new
puts a_creature.to_yaml

# Save Data
store.transaction do
  store[:foo] = 'bar'
  store[:greeting] = ['Hello','World']
  store[:amount] = 1.56
  store[:children] = {george: 12, jane: 13, tammy: 0}
  store[:last_accessed] = Time.now
  store[:creature] = a_creature

  # Save Changes
  store.commit

  # # Abort Changes
  # store.abort 

  # # Read more at the docs at http://ruby-doc.org/stdlib-2.2.3/libdoc/yaml/rdoc/YAML/Store.html
end

a = <<DELIM
"use the chars method to convert the string into an array of characters. Then you can use each on this array to iterate.

Example:

array_of_characters = "rubyguides".chars
# ["r", "u", "b", "y", "g", "u", "i", "d", "e", "s"]
How to Convert a String to Upper or Lowercase in Ruby
If you would like to convert a string to all upper case you can use the upcase method."
DELIM

puts a