class CreateUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_subjects do |t|
      t.integer :user_lesson_style_id 
      t.timestamps
    end
  end
end
