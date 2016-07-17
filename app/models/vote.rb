class Vote < ApplicationRecord
  belongs_to :gif

  scope :upvotes,   ->() { where(value:  1) }
  scope :downvotes, ->() { where(value: -1) }
end
