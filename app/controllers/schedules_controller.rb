class SchedulesController < ApplicationController

  

   
  def update
    # @memory =  Memory.find(params[:id])
    schedules = Schedule.find(params[:id])
    
    if  schedules.update(schedule: Time.current.days_since(a.to_i).to_date, schedule_form: a.to_i)
      redirect_to memories_path, notice: '更新が完了しました!'
    else 
      flash[:alert] = '更新できませんでした'
      render :edit
    end
  end



  def destroy
    # binding.pry
    schedules = Schedule.find(params[:id])
    # schedules.destroy
    # binding.pry
    # @schedule_memory_id = Memory.find(params[:memory_id])
    @memory = Memory.find(params[:memory_id])
    
    if @memory.schedules.count == 1
      @memory.destroy
      redirect_to memories_path, notice: 'お疲れ様です！復習スケジュールを完了しました'
    else
      # binding.pry
      schedules.destroy
      
      
      redirect_to memories_path, notice: 'お疲れ様です！復習スケジュールを完了しました'
    end
  end
end
