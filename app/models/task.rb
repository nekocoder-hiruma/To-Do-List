class Task < ApplicationRecord
  validates :name, presence: true
  validates :due_date, allow_blank: true, presence: true

  # You can add callbacks, associations, or custom methods here later
  # Example: default value for 'completed'
  attribute :is_completed, :boolean, default: false

  # Example: Scopes for easier querying
  scope :completed, -> { where(is_completed: true) }
  scope :pending, -> { where(is_completed: false) }
  scope :due_today, -> { where(due_date: Date.current) }
  scope :overdue, -> { where("due_date < ? AND completed = ?", Date.current, false) }
end
