class EventsController < ApplicationController

  before_action :authenticate_user!
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:image)
  end
end
