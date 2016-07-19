class Ranking < ApplicationRecord
  self.primary_key = :id
  belongs_to :gif

  scope :with_gifs, ->() { includes(:gif) }
  scope :order_by_rank, ->() { order(:rank) }
end
