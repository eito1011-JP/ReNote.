class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  
  def new
    @memory = Memory.new
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :new
    end     
  end

  
  
  def show
  end
  
  def edit
    @memory = Memory.find(params[:id])
  end

  def update
    @memory = Memory.find(params[:id])
    if @memory.update(memory_params)
      redirect_to root_path, notice: 'Success!'
    else 
      flash[:alert] = 'Save error!'
      render :edit
    end
  end
  
  def destroy
    @memory = Memory.find(params[:id])
    @memory.destroy
    redirect_to root_path, notice: 'Success!'
  end

  private
  def memory_params
    params.require(:memory).permit(:text, :time, :range, :schedule)
  end
end

 