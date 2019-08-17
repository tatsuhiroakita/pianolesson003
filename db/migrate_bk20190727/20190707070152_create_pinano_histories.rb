class CreatePinanoHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :pinano_histories do |t|
      t.string :name
      t.timestamps
    end
  end
end
