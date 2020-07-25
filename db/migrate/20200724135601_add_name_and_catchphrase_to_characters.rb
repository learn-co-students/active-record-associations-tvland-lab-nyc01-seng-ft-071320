class AddNameAndCatchphraseToCharacters < ActiveRecord::Migration[6.0]
  def change
      remove_column :characters, :first_name, :string
      remove_column :characters, :last_name, :string
      add_column :characters, :name, :string
      add_column :characters, :catchphrase, :string  
  end
end
