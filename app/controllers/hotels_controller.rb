class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
    @feedbacks = Feedback.all
  end

	def new
		@hotel = Hotel.new
    @feedback = Feedback.new
	end

	def create
      @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotels_path
    else
      render "new"
    end
  end

  def show
  	@hotel = Hotel.find(params[:id])
  end

  private

    def hotel_params
    	params.require(:hotel).permit(:id, :title, :breakfast, :room_description, :price, 
                                     :address, :photo)
    end

end
