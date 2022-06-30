class Teacher < ApplicationRecord
    has_many :quizzes
    has_secure_password

end
