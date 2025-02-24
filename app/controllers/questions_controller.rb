class QuestionsController < ApplicationController
  def ask
  end

  # Coaching answers:
  # 1- If the message is I am going to work, the coach will answer Great!
  # 2- If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
  # 3- Otherwise the coach will answer I don't care, get dressed and go to work!

  def answer
    question = params['question']
    if question == 'I am going to work'
      @answer = 'Great!'
    elsif question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
