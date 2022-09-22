class Review < ApplicationRecord
    belongs_to :user
    belongs_to :business

    validates :rating, presence: true
    validates :review, presence: true
    validates :user_id, presence: true, uniqueness: {scope: :business_id, message: 'You have already reviewed this business!'}
    validates :business_id, presence: true
end
