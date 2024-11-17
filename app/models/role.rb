class Role < ApplicationRecord
  NAMES = %w[admin sapeur].freeze

  has_many :users, dependent: :restrict_with_exception

  validates :name, presence: true, inclusion: {in: NAMES}
end
