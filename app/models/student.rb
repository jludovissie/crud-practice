class Student < ApplicationRecord
    belongs_to :degree 
    
    validates :name, presence: true 
    validates :age, presence: true 
    validates :degree, presence: true

end
