class MemoriesController < ApplicationController
  before_action :set_target_memory, only: %i[show edit update destroy]

  def index
    @schedules = Schedule.joins(:memory).where(memory: {user_id: current_user.id }).order('schedule asc').page(params[:page]).per(10)


   
    # binding.pry
  end
  
  def new
    @memory = Memory.new
    
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user_id = current_user.id
    arrays = params[:memory][:schedule].split(",") 

    arrays.each do |a|
      @memory.schedules.build(schedule: Time.current.days_since(a.to_i).to_date, schedule_form: a.to_i)
    end

    if @memory.save
      redirect_to memories_path, notice: '投稿が完了しました!'
    else
      flash[:alert] = '投稿が完了できませんでした'
      render :new 
    end     
  end

  def show
    @memory = Memory.find(params[:id])
  end
  
  def edit
    # binding.pry
    @memory = Memory.find(params[:id])
  end

  def update
    if @memory.update(memory_params)
      redirect_to memories_path, notice: '更新が完了しました!'
    else 
      flash[:alert] = '更新できませんでした'
      render :edit
    end
  end
  
 



  def schedule
    @memory = Memory.new(memory_params)
    @memory.update()
  end

  private
  def memory_params
    params.require(:memory).permit(:date, :text, :time, :range,)
  end

  def schedule_params
    params.require(:schedule).permit(:schedule)
  end


  def set_target_memory
    @memory = Memory.find(params[:id])
  end
end

 