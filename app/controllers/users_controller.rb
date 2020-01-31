class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  end

  def index
  	@user = User.all
  end

  def edit
  	@user = User.find(params[:id])

  end

  def top

  end

  def about

  end

  private
  def  user_params
        params.require(:user).permit(:name, :introduction, :profile_image_id)

  end


end
