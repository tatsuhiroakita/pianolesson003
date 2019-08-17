class AddForeignKeysToUsers < ActiveRecord::Migration[5.2]
  def change
     add_reference :users, :fee_howto, foreign_key: true
  end
end
