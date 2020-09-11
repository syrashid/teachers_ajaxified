class ApplicationController < ActionController::Base
  before_action :set_counter
  # Because all controllers inherit from Application Controller all controller actions will now have the @teacher_count instance variable set before the action

  private

  def set_counter
    @teacher_count = Teacher.count
  end
end
