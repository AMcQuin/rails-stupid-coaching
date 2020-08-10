class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_question = params[:question]
    if @your_question == "I am going to work right now!" # || (your_message == "I AM GOING TO WORK RIGHT NOW!")
      @answer = "Great!"
    elsif @your_question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
