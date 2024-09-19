class EventController < ApplicationController
  def index
    @now = Time.current
    @date = Date.today+3
  end
end
