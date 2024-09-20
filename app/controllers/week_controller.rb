class WeekController < ApplicationController
  def show
    @id = params[:id]
    @week = Week.all
    @date = Date.today
    @date2 = Date.today + 7
    @date3 = Date.today + 14

  end

  def create
    @week = Week.new(week_params)
    @week.event_id = params[:id]
    @week.save!
    redirect_to event_index_path
  end

  
  private

  def week_params
    params.require(:week).permit(:time1)
  end

end
