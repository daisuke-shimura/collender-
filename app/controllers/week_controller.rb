class WeekController < ApplicationController


  def show
    @id = params[:id]
    @week = Week.all
    @date = Date.today
    @date2 = Date.today + 7
    @date3 = Date.today + 14

  end

  def create
    week = Week.new(week_params)
    #week.event_id = Event.find(params[:event_id]).id
    week.save!
    redirect_to request.referer
  end

  def destroy
    Week.find(params[:id]).destroy
    redirect_to request.referer
  end
  
  private

  def week_params
    params.require(:week).permit(:time1, :event_id)
  end

end
