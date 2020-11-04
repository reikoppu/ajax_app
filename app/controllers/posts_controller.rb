class PostsController < ApplicationController
 def index
  @posts = Post.all.order(id: "DESC")
   #"これはコントローラーで定義したインスタンス変数を確認するための文字列です"  
 end

 def create
  Post.create(content: params[:content])
  redirect_to action: :index
 end
 
end
