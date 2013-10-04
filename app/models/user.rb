class User < ActiveRecord::Base

  MALE = 1
  FEMALE = 2

  # Validations
  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false

  # Associations

  # Scopes

  # Public Methods

end

