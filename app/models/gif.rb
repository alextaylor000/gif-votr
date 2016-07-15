class Gif < ApplicationRecord
  validates_presence_of :image

  mount_uploader :image, GifUploader

  scope :order_by_id, ->() { order(:id) }
end
