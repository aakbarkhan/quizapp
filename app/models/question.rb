class Question < ApplicationRecord
    belongs_to :teacher
    has_many :students
    belongs_to :quiz
end
