class FeedbacksController < ApplicationController

  def index
    @feedback = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
      respond_to do |format|
      if @feedback.save
         format.html { redirect_to hotel_path, notice: ' Feedback was successfully created.' }
      else
        format.html { redirect_to hotel_path, notice: ' something wrong.' }
       end
      end
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  private
  def feedback_params
    params.require(:feedback).permit(:id, :user_name, :sender_id, :body)
  end
end
