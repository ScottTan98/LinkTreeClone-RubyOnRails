class Tree < ApplicationRecord
  validates :instagram, presence: true

  validates :name, presence: true, length: { minimum: 5, message: "must be at least 5 characters" }

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user
end
