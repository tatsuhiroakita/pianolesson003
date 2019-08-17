class AddEmagenceNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emagence_name, :string
  end
end
