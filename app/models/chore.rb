class Chore < ApplicationRecord
    validates_presence_of :task 

    belongs_to :category 
    belongs_to :tag
end
