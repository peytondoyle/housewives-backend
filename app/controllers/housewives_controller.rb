class HousewivesController < ApplicationController
  def index
    housewives = Housewife.all
    render json: housewives
  end

  def create
    housewife = Housewife.create(housewife_params)
    render json: housewife
  end

  def show
    housewife = Housewife.find(params[:id])
    render json: housewife
  end

  def destroy
    Housewife.destroy(params[:id])
  end

  def update
    housewife = Housewife.find(params[:id])
    housewife.update_attributes(housewife_params)
    render json: housewife
  end

  private

  def housewife_params
    params.require(:housewife).permit(:id, :name, :description)
  end
end
