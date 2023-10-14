class AirlineDemosController < ApplicationController
  def index
    @airlines = AirlineDemo.includes(@airlines).all
    render json: {success: true, data: @airlines}
  end
end
