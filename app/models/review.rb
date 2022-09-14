class Review < ApplicationRecord
    validates :rating, presence: true
    validates :review, presence: true
    validates :reviewer, presence: true
    validates :business_id, presence: true
end
