class QuestionsController < ApplicationController
  def ask
    # This renders the ask.html.erb view
  end

  def create
    @question = params[:question]
    # Redirect to the answer action with the question as a query parameter
    redirect_to answer_path(question: @question)
  end

  def answer
    @question = params[:question]

    @answer = if @question.downcase == "i am going to work"
                "Great!"
              elsif @question.end_with?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
