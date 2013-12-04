class QuestionsController < ApplicationController
  include ApplicationHelper

  def new
  end

  def create
    current_user.questions.create(params[:question])
    current_user.coordinator.send_question_notification_email
    redirect_to participant_path(current_user)
  end

  def index
    @questions = current_user.questions.order("updated_at DESC")
  end

  def all
    @questions = Question.where("private = ? AND answered = ?", false, false).order("updated_at DESC")
  end
end
