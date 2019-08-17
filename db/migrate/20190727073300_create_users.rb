class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string  :username
      t.string  :kanji_name
      t.string  :firstname
      t.string  :lastname
      t.string  :email
      t.string  :email2
      t.integer :age
      t.string  :address
      t.string  :zip_code
      t.string  :mobile_phone
      t.string  :emagency_phone
      t.string  :emagency_zokugara
      t.string  :emagency_name
      t.string	:emagency_kana
      t.string  :name_kana
      t.integer :lesson_kaisu
      t.integer :lesson_nobekaisu
      t.date    :join_date

      t.references :lesson_styles,    foreign_key: true
      t.references :fee_howtos,       foreign_key: true
      t.references :level_kibous,     foreign_key: true
      t.references :level_kakuteis,   foreign_key: true
      t.references :pinano_histories, foreign_key: true
      t.references :pinano_owned,     foreign_key: true


      t.timestamps
    end
  end
end
