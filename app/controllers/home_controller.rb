class HomeController < ApplicationController
  def index

  end
  
  def write
    u = User.new
    file = params[:pic]
    
    if file != nil
      u.avatar = file
    end
    
    u.save
    
    posts = Post.new
    posts.content = params[:content]
    posts.user = u
    posts.save
    
    redirect_to '/home/index'
  end
  
  def gethtml
    @posts = Post.all.order("id desc")
  end
end
