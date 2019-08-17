class CreateLevelKibous < ActiveRecord::Migration[5.2]
  def change
    create_table :level_kibous do |t|
      t.string :name
      t.timestamps
    end
  end
end
