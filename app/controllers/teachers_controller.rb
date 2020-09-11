class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    # We use the following to specify what format for the action to respond with.
    # By default it will respond with html, but now that we've added the following it will also provide a response for a json request
    respond_to do |format|
      format.html
      format.json { render json: { teachers: @teachers } }
                                              # ☝️THIS IS THE OBJECT THE RESPONSE WILL CONTAIN
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    # We need this 👇 below because of our inline review form
    @review = Review.new
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end
end
