class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :username
      t.string   :kanji_name
      t.string  :firstname
      t.string  :lastname
      t.string  :email
      t.string  :email2
      t.integer  :age
      t.string  :address
      t.string  :zip_code
      t.string  :mobile_phone
      t.string  :emagency_phone
      t.string  :emagency_zokugara
      t.integer :lesson_kaisu
      t.integer :lesson_nobekaisu
      t.integer :level_kibou
      t.integer :level_kakutei
      t.integer :lesson_style
      t.integer :fee_howto
      t.integer :pinano_owned
      t.integer :pinano_history
      t.date    :join_date

      t.references :lesson_styles, foreign_key: true

      t.timestamps
    end
  end
end
