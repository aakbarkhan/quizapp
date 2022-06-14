class Api::V1::QuizzesController < ApplicationController
    def index
        @quizzes = Quiz.all
        if @quizzes
            render json: {
                quizzes: @quizzes
            }
        else
            render json: {
                status: 500,
                errors: ['no quizzes found']
            }
        end
    end

    def show
        @quiz = Quiz.find_by(id: params[:id])
        render json: @quiz
    end

    def create
        @quiz = Quiz.new(quiz_params)
        return render json: @quiz.errors, status: :unprocessable_entity unless @quiz.save

        render json: @quiz, status: :created
    end

    private

    def quiz_params
        params.require(:quiz).permet(:title, :subject, :chapter)
    end
end
