class V1::HousewivesController < ApplicationController
  def index
    housewives = Housewife.all
    render json: housewives
  end
end
