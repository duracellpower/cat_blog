class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :pre_name
      t.date :birthdate
      t.string :info

      t.timestamps
    end
  end
end
