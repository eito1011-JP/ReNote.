class MemoriesController < ApplicationController
  before_action :set_target_memory, only: %i[show edit update destroy]

  def index
    # @memories = Memory.all
    @memories =Memory.page(params[:page])

  end
  
  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to root_path, notice: '投稿が完了しました!'
    else
      flash[:alert] = '投稿が完了できませんでした'
      render :new
    end     
  end

  def show
  end
  
  def edit
  end

  def update
    if @memory.update(memory_params)
      redirect_to root_path, notice: '更新が完了しました!'
    else 
      flash[:alert] = '更新できませんでした'
      render :edit
    end
  end
  
  def destroy
    @memory.destroy
    redirect_to root_path, notice: '復習スケジュールを削除しました'
  end

  def toggle
    head :no_content
    @memory = Memory.find(params[:id])
    @memory.done = !@memory.done
    @memory.save
  end

  private
  def memory_params
    params.require(:memory).permit(:text, :time, :range, :schedule)
  end

  def set_target_memory
    @memory = Memory.find(params[:id])
  end
end

 