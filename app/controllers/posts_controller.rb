class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new_post
  end

  def create
    Post.create(title: params["title"], image_url: params["img_url"], content: params["content"])
  end

end
