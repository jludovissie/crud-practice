class Student < ApplicationRecord
    has_secure_password
    belongs_to :degree 
    
    validates :name, presence: true 
    validates :age, presence: true 
    validates :degree, presence: true

end
