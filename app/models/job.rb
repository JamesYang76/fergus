class Job < ApplicationRecord
  enum status: { scheduled: 0, invoicing: 1, to_priced: 2, completed: 3 }
  after_initialize :set_default_due_date

  has_many :notes, dependent: :destroy

  validates :name, presence: true
  validates :due_datetime, presence: true
  validates :status, presence: true
  validates :client_name, presence: true
  validates :client_email, presence: true
  validates :client_mobile, presence: true

  def set_default_due_date
    self.due_datetime = Time.zone.now + 10.days
  end
end
