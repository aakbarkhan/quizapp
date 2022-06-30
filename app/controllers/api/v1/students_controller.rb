class Api::V1::StudentsController < ApplicationController
    def index
        @students =  Student.all
        if @students
            render json: {
                students: @students
            }
        else
            render json: {
                status: 500,
                errors: ['no students found']
            }
        end
    end

    def create
        @student = Student.new(student_params)
        return render json: @student.errors, status: :unprocessable_entity unless @student.save

        render json: @student, status: :created
    end

    def update
        return render json: @student.errors, status: :unprocessable_entity unless @student.update(student_params)
    end

    def show
        @student = Student.find_by(id: params[:id])
        render json: @student 
    end

    private

    def student_params
        params.require(:student).permet(:name, :email, :password, :password_confirmation, :role, :dob)
    end

end
