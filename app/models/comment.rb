class Comment < ActiveRecord::Base

  # Validations
  validates :content, presence: true, allow_blank: false
  validates :commentable_id, presence: true
  validates :commentable_type, presence: true

  # Associations
  belongs_to :commentable, polymorphic: true

  # Scope
  default_scope {order('comments.created_at DESC')}

end
