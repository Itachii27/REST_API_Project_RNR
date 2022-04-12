class Alljob < ApplicationRecord
    has_many :user
    validates :title, presence: true
end
