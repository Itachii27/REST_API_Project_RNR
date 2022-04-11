class Alljob < ApplicationRecord
  belongs_to :alluser
    validates :title, presence: true
end
