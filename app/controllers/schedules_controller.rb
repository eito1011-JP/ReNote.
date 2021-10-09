class SchedulesController < ApplicationController
  def update
    @memory =  Memory.find(params[:id])
    @schedule = Schedule.find(params[:id])
    
    if  @memory.@schedule.update(schedule: Time.current.days_since(a.to_i).to_date, schedule_form: a.to_i)
      redirect_to memories_path, notice: '更新が完了しました!'
    else 
      flash[:alert] = '更新できませんでした'
      render :edit
    end
  end
end
