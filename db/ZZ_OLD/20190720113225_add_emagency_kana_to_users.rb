class AddEmagencyKanaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emagency_kana, :string
  end
end
