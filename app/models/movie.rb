class Movie < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_many :user
end
