class WeekController < ApplicationController
  def show
    @id = params[:id]
    
    @date = Date.today
    @date2 = Date.today + 7
    @date3 = Date.today + 14
  end
end
