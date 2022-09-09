class Business < ApplicationRecord
    validates :business_name, uniqueness: true, presence: true
    validates :business_city, presence: true
end
