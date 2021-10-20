class SchedulesController < ApplicationController
  def update
    @memory =  Memory.find(params[:id])
    schedules = Schedule.find(params[:id])
    
    if  schedules.update(schedule: Time.current.days_since(a.to_i).to_date, schedule_form: a.to_i)
      redirect_to memories_path, notice: '更新が完了しました!'
    else 
      flash[:alert] = '更新できませんでした'
      render :edit
    end
  end

  def edit
# binding.pry
    @schedule = Schedule.find_by(params[:id])
  end

  def destroy
    schedules.destroy
    redirect_to memories_path, notice: 'お疲れ様です！復習スケジュールを完了しました'
  end


end
