class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :edit, :update, :destroy]

  def index
    @rentals = ::Property.all
  end

  def new
    if params[:back]
		  @rental = Property.new(rental_params)
    else
      @rental = Property.new
      2.times { @rental.nearest_stations.build }
    end
  end

  def show
  end

  def edit
    @rental.nearest_stations.build
  end

  def create
    @rental = Property.new(rental_params)
      if params[:back]
        render :new
      else
        if @rental.save
          redirect_to rentals_path, notice:"Your Information have been registered！"
        else
          render :new
        end
      end
  end

  def update
	    if @rental.update(rental_params)
	      redirect_to rentals_path, notice: "Your Information Have ben edited！"
	    else
	      render :edit
      end
  end

  def destroy
    @rental.destroy
      redirect_to rentals_path, notice:"Your Information Have Been destroyed！"
  end

  def confirm
		@rental = Property.new(rental_params)
    render :new if @rental.invalid?
	end


  private
  def rental_params
    params.require(:property).permit(:name, :rent, :address, :year, :memo, nearest_stations_attributes:[:id, :station, :route, :time])
  end

  def set_rental
    @rental = Property.find(params[:id])
  end

end
