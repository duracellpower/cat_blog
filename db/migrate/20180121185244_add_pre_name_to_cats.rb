class AddPreNameToCats < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :pre_name, :string
  end
end
