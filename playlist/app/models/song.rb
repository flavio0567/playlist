class Song < ApplicationRecord
  belongs_to :user

  has_many :joins, dependent: :destroy
  has_many :users, through: :joins

  validates :title, :artist, presence: true, length: { minimum: 2 }

end
