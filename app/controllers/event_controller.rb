class EventController < ApplicationController
  def index
    @event = Event.all
    @date = Date.today
    @date2 = Date.today + 7
    @date3 = Date.today + 14
  end

  def show
    #@event = Event.find(params[:id])
    @week = Week.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    event.save
    redirect_to request.referer
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:start, :finish)
  end

end
