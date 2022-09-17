class Review < ApplicationRecord
    validates :rating, presence: true
    validates :review, presence: true
    validates :reviewer, presence: true, uniqueness: {scope: :business_id, message: 'You have already reviewed this business!'}
    validates :business_id, presence: true
end
