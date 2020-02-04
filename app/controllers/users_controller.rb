class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@book = Book.new
    @books = @user.books
  end

  def index 
  	@users = User.all
    @book = Book.new
    @user = current_user 
  end

  def edit
  	@user = User.find(params[:id])

  end 

  def update
     @user = User.find(params[:id])
     if @user.update(user_params)
        flash[:notice] = "Update User"
        redirect_to user_path(@user)
     else
        render :edit

     end
  end

  private
  def  user_params
        params.require(:user).permit(:name, :introduction, :profile_image)

  end


end
