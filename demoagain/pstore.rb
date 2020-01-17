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
