class Todo < ApplicationRecord
  scope :completed, -> { where(completed: true) }
  scope :active, -> { where(completed: false) }

  def self.clear_completed
    completed.destroy_all
  end
end

