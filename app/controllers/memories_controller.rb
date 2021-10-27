class MemoriesController < ApplicationController
  before_action :set_target_memory, only: %i[show edit update destroy]

  def index
    
    # @memories = Memory.all
    @memories =Memory.where(user_id: current_user.id).order('date ASC').page(params[:page]).per(3)

  end
  
  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    @memory.user_id = current_user.id
    arrays = params[:memory][:schedule].split(",") 








    # post = Post.create(text: "新しいMacBook Proを買いました！")
    # comment = post.comments.create(text: "わー、いいなあ！")
    
    # post.comments.size #=> 1
    # post.comments[0].text #=> わー、いいなあ！
  
    # memory変数にMemoryモデルからscheduleを抽出して保存
    
    # 子のschedule変数にmemory変数からschedulesを抽出して保存
    

    arrays.each do |a|
      
      @memory.schedules.build(schedule: Time.current.days_since(a.to_i).to_date, schedule_form: a.to_i)
      
# binding.pry

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
    @memory = Memory.find_by(params[:id])
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

 