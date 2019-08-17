class CreateLessonStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_styles do |t|

      t.timestamps
    end
  end
end
