class CreateCountry < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :dial_prefix
    end

  end
end
