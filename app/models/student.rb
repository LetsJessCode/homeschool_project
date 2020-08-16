class Student < ApplicationRecord
    has_many :subjects
    belongs_to :user

    accepts_nested_attributes_for :subjects

    validates :name, :grade, :age, presence: true
    
end
