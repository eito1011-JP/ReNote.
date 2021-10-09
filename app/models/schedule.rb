class Schedule < ApplicationRecord
  belongs_to :memory
  validates :schedule, presence: { message: "スケジュール周期を入力してください"}
end
