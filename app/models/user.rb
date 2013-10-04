class User < ActiveRecord::Base

  # Validations
  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false

  # Associations

  # Scopes

  # Public Methods

end

