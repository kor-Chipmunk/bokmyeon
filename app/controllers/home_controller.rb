class HomeController < ApplicationController
  def index
    
  end
  
  def write
    content = params[:content]
    
    post = Post.new
    post.content = content 
    post.save
    
    redirect_to '/home/index'
  end
  
  def gethtml
    @posts = Post.all.order("id desc")
  end
end
