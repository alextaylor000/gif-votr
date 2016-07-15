class Gif < ApplicationRecord
  validates_presence_of :image

  mount_uploader :image, GifUploader
end
