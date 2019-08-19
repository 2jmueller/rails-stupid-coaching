class QuestionsController < ApplicationController
  def ask
    @question = params[:input]
  end

  def answer
    ask
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Fuck off'
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end
