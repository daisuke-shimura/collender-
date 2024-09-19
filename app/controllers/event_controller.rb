class EventController < ApplicationController
  def index
    @now = Time.current
    @date = Date.today
    @date2 = Date.today + 7
    @date3 = Date.today + 14
  end

  def show
    #@event = Event.find(params[:id])
  end
end
