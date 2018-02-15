class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :pre_name
      t.date :birthdate
      t.text :info
      t.string :animal_type

      t.timestamps
    end
  end
end
