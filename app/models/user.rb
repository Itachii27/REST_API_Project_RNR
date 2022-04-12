class User < ApplicationRecord
  has_many :statuses
  has_many :alljobs, through: :statuses
  accepts_nested_attributes_for :statuses,
  :allow_destroy => true

end
