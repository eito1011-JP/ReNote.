class Memory < ApplicationRecord
  validates :text, presence: true
  validates :range, presence: true
  validates :time, presence: true
  validates :schedule, presence: true
end
