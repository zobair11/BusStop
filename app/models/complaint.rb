class Complaint < ApplicationRecord
  validates :complaint, presence: true
  belongs_to :user
end
