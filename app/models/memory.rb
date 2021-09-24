class Memory < ApplicationRecord
  belongs_to :user
  validates :text, presence: { message: "テキスト名を入力してください"}
  validates :range, presence: { message: "学習範囲を入力してください"}
  validates :time, presence: { message: "学習時間を入力してください"}
  validates :schedule, presence: { message: "スケジュール周期を入力してください"}
   
  def user
    return User.find_by(id: self.user_id)
 end
end
