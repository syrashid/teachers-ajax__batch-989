class ReviewsController < ApplicationController
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher

    respond_to do |format|
      if @review.save
        format.html { redirect_to @teacher }
        format.json # Follows the default classic rails flow and looks for something called create
      else
        format.html { render 'teachers/show', status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
