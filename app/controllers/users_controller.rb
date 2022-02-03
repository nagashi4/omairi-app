class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @worships = user.worships
  end
end
