class AddfeeHowtoIdToUsers < ActiveRecord::Migration[5.2]
  def change
	      add_reference :fee_howtos, :users, foreign_key: true
  end
end
