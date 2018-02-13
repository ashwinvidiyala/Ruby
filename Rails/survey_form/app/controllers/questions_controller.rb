class QuestionsController < ApplicationController
  def index

  end

  def result

  end

  def create
    question = Question.create(question_params)
    return redirect_to question_path question.id
  end

  def show
    @question = Question.find(params[:id])
    # @count = Question.count
    flash[:count] = "Thanks for submitting the form. You have submitted the form #{Question.count} times now."
    return render 'result.html.erb'
  end

  private

  def question_params
    params.require(:question).permit(:name, :dojo_location, :favorite_language, :comment)
  end
end
