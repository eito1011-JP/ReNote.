class Schedule < ApplicationRecord
  has_many :memories_schedules
  has_many :memories, through: :memories_schedules
  validates :schedule, presence: { message: "スケジュール周期を入力してください"}
end
