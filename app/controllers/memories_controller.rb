class MemoriesController < ApplicationController
  def index
    @memories = Memory.all
  end

  def create
    @memory = Memory.create
  end
end
 