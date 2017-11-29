class Api::V1::RoutesController < ApplicationController

  before_action :set_route, except: [:index, :create]

  def create
    new_route = Route.create(route_params)

    if !new_route.errors.empty?
      render json: {status: "error", code: 400, message: new_route.errors.full_messages[0]}
    else
      render json: new_route
    end

  end

  def update
    @route.update(route_params)
    render json: @route
  end

  def index
    @routes = Route.all
    render json: @routes
  end

  def show
    render json: @route
  end

  private

  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name, :polyline, :image_url, :description, :rating)
  end

end
