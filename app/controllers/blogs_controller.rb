class BlogsController < ApplicationController
  before_action :set_blog, only:[:show, :edit, :update, :destroy]

   def index
       @blogs = Blog.all
   end

   def new
     if params[:back]
      @blog = Blog.new(blog_params)
     else
      @blog = Blog.new
     end
   end

   def confirm
       @blog = Blog.new(blog_params)
       @blog.user_id = current_user.id
       render :new if @blog.invalid?
   end

   def create
       @blog = Blog.new(blog_params)
       @blog.user_id = current_user.id

       if @blog.save
         NoticeMailer.notice_mail(@blog).deliver
         redirect_to new_blog_path, notice: "make new blog!!"
       else
         render'new'
       end
   end

   def show
     @favorite = current_user.favorites.find_by(blog_id: @blog.id)
   end

   def edit
   end

   def update
       if @blog.update(blog_params)
           redirect_to blog_path, notice:"complete edting blog"
       else
           render'new'
       end
   end

   def destroy
       @blog.destroy
       redirect_to blogs_path, notice:"deleted blog"
   end

   private
     def blog_params
       params.require(:blog).permit(:title, :content, :condition)
     end

     def set_blog
       @blog = Blog.find(params[:id])
     end
end
