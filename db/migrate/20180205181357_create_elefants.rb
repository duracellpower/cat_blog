class CreateElefants < ActiveRecord::Migration[5.1]
  def change
    create_table :elefants do |t|
      t.string :name
      t.string :prename
      t.date :birthdate
      t.string :info

      t.timestamps
    end
  end
end
