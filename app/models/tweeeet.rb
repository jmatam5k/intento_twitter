class Tweeeet < ApplicationRecord
    belongs_to :user
    paginates_per 50
    has_many :likes
end
