class AddColumnsToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :first_name, :string
    add_column :actors, :last_name, :string  
    remove_column :actors, :name, :string
  end
end
