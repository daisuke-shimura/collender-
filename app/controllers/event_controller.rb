class EventController < ApplicationController
  def index
    @now = Time.current
    @date = Date.today
  end
end
