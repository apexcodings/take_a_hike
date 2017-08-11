class HikesController < ApplicationController
  before_action :authorize_admin, :except => [:index, :show, :search]

  def index
    @hikes = Hike.all
  end

  def show
    @hike = Hike.find(params[:id])
    @lat = @hike.latitude
    @lng = @hike.longitude
  end

  def new
    @hike = Hike.new
  end

  def create
    if Hike.create!(hike_params)
      redirect_to admin_path, notice: 'Hike successfully added!'
    else
      render :new
    end
  end

  def edit
    @hike = Hike.find(params[:id])
  end

  def update
    @hike = Hike.find(params[:id])
    if @hike.update!(hike_params)
      redirect_to admin_path, notice: 'Hike successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @hike = Hike.find(params[:id])
    @hike.destroy
    redirect_to admin_path, notice: 'Hike successfully deleted!'
  end

  def search
    @search_results = Hike.search(params[:search])
    render :search
  end

private

  def hike_params
    params.require(:hike).permit(:name, :length, :elevation, :difficulty, :description, :image)
  end

end
