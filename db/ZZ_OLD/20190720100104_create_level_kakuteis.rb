class CreateLevelKakuteis < ActiveRecord::Migration[5.2]
  def change
    create_table :level_kakuteis do |t|
      t.string :name
      t.timestamps
    end
  end
end
