class ReviewsController < ApplicationController
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher
    if @review.save
      redirect_to teacher_path(@teacher, anchor: "review-#{@review.id}")
      # We pass an anchor with the url so that we are brought down to the correct part of the page after a new review has been created
    else
      render 'teachers/show'
      # Remember render struggles with turbolinks so don't forget the gem turbolinks_render
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
