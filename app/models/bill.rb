class Bill < ActiveRecord::Base

  # Validations
  validates :name, presence: true, allow_blank: false
  validates :user_id, presence: true
  validates :date, presence: true
  validates :value, presence: true

  # Associations
  belongs_to :user

  # Scopes
  default_scope { order('bills.date DESC') }

  scope :recent, -> {order('bills.date DESC').limit(5)}

  scope :recent_by_date, ->(date) {
    where("bills.date <= '#{ date.to_s(:db) }' ").order('bills.date DESC').limit(5)
  }

  # Public methods

end
