class Tweeeet < ApplicationRecord
    belongs_to :user
    paginates_per 50
    has_many :likes
    validates :tweeeet, :presence => true,
    :length => { :minimum => 1}, 
    :length => { :maximum => 120}
end
