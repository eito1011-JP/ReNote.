class Memory < ApplicationRecord
  belongs_to :user

  has_many :memories_schedules
  has_many :schedules, through: :memories_schedules
 

  validates :text, presence: { message: "テキスト名を入力してください"}
  validates :range, presence: { message: "学習範囲を入力してください"}
  validates :time, presence: { message: "学習時間を入力してください"}
  # validates :schedule, presence: { message: "スケジュール周期を入力してください"}
   
  REGISTRABLE_ATTRIBUTES = %i(
    name
    date(1i) date(2i) date(3i)
    published_at(1i) published_at(2i) published_at(3i) published_at(4i) published_at(5i)
  )

  def user
    return User.find_by(id: self.user_id)
  end
end
