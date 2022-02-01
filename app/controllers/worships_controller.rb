class WorshipsController < ApplicationController

  before_action :set_worship, only: [:edit, :show]


  def index
    @worships = Worship.all
  end

  def new
    @worship = Worship.new
  end
  
  def create
    Worship.create(worship_params)
  end

  def destroy
    worship = Worship.find(params[:id])
    worship.destroy
  end

  def edit
  end

  def update
    worship = Worship.find(params[:id])
    worship.update(worship_params)
  end

  def show
  end


  private
  def worship_params
    params.require(:worship).permit(:name, :image, :text)
  end

  def set_worship
    @worship = Worship.find(params[:id])
  end
end
