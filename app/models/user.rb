class User < ApplicationRecord
  validates :name, :gender, :on_board_time, presence: true
  has_one :complaint, dependent: :destroy
end
