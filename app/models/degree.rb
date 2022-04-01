class Degree < ApplicationRecord
    has_many :students 
    
    validates :major, presence: true 
    validates :department, presence: true
end