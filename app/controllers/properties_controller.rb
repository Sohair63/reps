class PropertiesController < ApplicationController

  def index
    properties = Property.page(params[:page])
    sort_direction
    @properties = sorted properties

    respond_to do |format|
      format.html
      format.json { render json: @properties }
    end
  end

  def show
    @property = Property.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @property }
    end
  end

end
