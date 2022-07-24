class Note < ApplicationRecord
  default_scope { order(created_at: :desc) }
  scope :persisted, -> { select(&:persisted?) }

  belongs_to :job

  validates :commenter, presence: true
  validates :body, presence: true
end
