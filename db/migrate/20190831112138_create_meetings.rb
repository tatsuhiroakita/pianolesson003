class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time

      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
