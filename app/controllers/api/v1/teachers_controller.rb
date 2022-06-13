class Api::V1::TeachersController < ApplicationController

    def index
        @teachers = Teacher.all
        if @teachers
          render json: {
            teachers: @teachers
          }
        else
          render json: {
            status: 500,
            errors: ['no teachers found']
          }
        end
      end

      def show

        @teacher = Teacher.find_by(id: params[:id])
        if @teacher
          render json: @teacher
        else
          render json: {
            message: [' no Teacher found on the record']
          }
        end
      end

      def create
        @teacher = Teacher.new(teacher_params)
        return render json: @teacher.errors, status: :unprocessable_entity unless @teacher.save

        render json: @teacher, status: :created
            
      end

      def update
        return render json: @teacher.errors, status: :unprocessable_entity unless @teacher.update(teacher_params)
      end

      private

      def teacher_params
        params.require(:teacher).permit(:name, :email, :password, :role, :school)
      end

end
