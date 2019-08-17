class AddEmagenceKanaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emagence_kana, :string
  end
end
