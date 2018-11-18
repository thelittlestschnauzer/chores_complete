class Category < ApplicationRecord
    validates_presence_of :name 

    has_many :chores 
    has_many :tags, through: :chores 
end
