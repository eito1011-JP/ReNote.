class MemoriesSchedule < ApplicationRecord
  belongs_to :schedule, optional: true
  belongs_to :memory, optional: true
end
