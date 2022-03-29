class Course < ApplicationRecord

    validates :name, presence: true  
    validates :number, presence: true    
    validates :professor, presence: true 
end
