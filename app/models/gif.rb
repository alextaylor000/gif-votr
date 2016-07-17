class Gif < ApplicationRecord
  has_one :ranking
  has_many :votes

  validates_presence_of :image

  scope :order_by_id, ->() { order(:id) }

  mount_uploader :image, GifUploader

  delegate :rank, to: :ranking
  delegate :upvotes, :downvotes, to: :votes
end
