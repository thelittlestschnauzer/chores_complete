class Tag < ApplicationRecord
    has_many :chores
    has_many :categories, through: :chores 
end
