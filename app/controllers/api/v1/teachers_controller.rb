class Api::V1::TeachersController < ApplicationController

    def index
        @teachers = Teacher.all
        if @teachers
          render json: {
            users: @teachers
          }
        else
          render json: {
            status: 500,
            errors: ['no teachers found']
          }
        end
      end

      private

      def user_params
        params.require(:teacher).permit(:name, :email, :password, :role, :school)
      end

end
