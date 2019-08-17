class AddEmagencyNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emagency_name, :string
  end
end
