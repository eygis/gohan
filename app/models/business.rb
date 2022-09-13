class Business < ApplicationRecord

    has_many :reviews, class_name: "Review", foreign_key: "business_id"

    validates :business_name, uniqueness: true, presence: true
    validates :business_city, presence: true
end
