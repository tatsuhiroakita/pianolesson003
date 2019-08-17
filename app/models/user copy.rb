class User < ApplicationRecord
    validates :username, presence: true ,uniqueness: true, length: { minimum:2, maximum: 15 },
            format: { 
                with: /\A[a-z0-9]+\z/i , 
                message: "半角英数字のみで入力して下さい"
            }

    validates :email, presence: true

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

    has_secure_password
    #validates :password, presence: true, length: { minimum: 8 ,maximum: 32}
    validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i }

    


end
