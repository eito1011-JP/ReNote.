class HomeController < ApplicationController
  def index
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create
  end
end
