class User < ApplicationRecord
  has_many :memoires, foreign_key: :memory_user_id
  
devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
    # length: { maximum: 50 },
    # format: {
    #   with: /\A[a-z0-9]+\z/,
    #   message: 'は小文字英数字で入力してください'
    # }
  validates :password, length: { minimum: 8 }
end
