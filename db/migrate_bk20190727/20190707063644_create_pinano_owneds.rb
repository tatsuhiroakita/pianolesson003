class CreatePinanoOwneds < ActiveRecord::Migration[5.2]
  def change
    create_table :pinano_owneds do |t|
      t.string :name
      t.timestamps
    end
  end
end
