class UserAnswersController < ApplicationController
  def create
    params[:answers].each do |question_id, option_id|
      question = Question.find(question_id)
      option = question.options.find(option_id)

      UserAnswer.create!(question: question, option: option)
    end

    redirect_to questions_path, notice: "Your answers have been submitted!"
  end
end
