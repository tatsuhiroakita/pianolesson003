class CreateUserLessonStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lesson_styles do |t|
      t.string :user_lesson_style_id
      t.timestamps
    end
  end
end
