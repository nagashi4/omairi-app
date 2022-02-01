class WorshipsController < ApplicationController
  def index
    @worships = Worship.all
  end

  def new
    @worship = Worship.new
  end
  
  def create
    Worship.create(worship_params)
  end

  private
  def worship_params
    params.require(:worship).permit(:name, :image, :text)
  end
end
