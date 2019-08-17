class AddNameKanaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name_kana, :string
  end
end
