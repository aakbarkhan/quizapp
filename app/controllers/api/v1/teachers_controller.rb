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
        if current_user
          render json: current_user, status: :ok
        else
          render json: "No current session stored", status: :unauthorized
        end

        # @teacher = Teacher.find_by(id: params[:id])
        # if @teacher
        #   render json: @teacher
        # else
        #   render json: {
        #     message: [' no Teacher found on the record']
        #   }
        # end
      end

      def new
        @teacher = Teacher.new(teacher_params)
      end

      def create
        @teacher = Teacher.new(teacher_params)
        if @teacher.valid?
          session[:id] = @teacher.id
        else
          render json: @teacher.errors.full_messages, status: :unprocessable_entity
        end
        return render json: @teacher.errors, status: :unprocessable_entity unless @teacher.save

        render json: @teacher, status: :created
            
      end

      def update
        return render json: @teacher.errors, status: :unprocessable_entity unless @teacher.update(teacher_params)
      end

      private

      def teacher_params
        params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :role, :school)
      end

end
