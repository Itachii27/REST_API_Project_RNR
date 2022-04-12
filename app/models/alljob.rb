class Alljob < ApplicationRecord
    has_many :statuses
    has_many :users, through: :statuses
    validates :title, presence: true
end
