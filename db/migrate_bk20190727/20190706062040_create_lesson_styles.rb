class CreateLessonStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_styles do |t|

      t.string :name

      t.timestamps
    end
  end
end
