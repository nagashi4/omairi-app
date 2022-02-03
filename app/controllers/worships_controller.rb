class WorshipsController < ApplicationController

  before_action :set_worship, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

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
    params.require(:worship).permit(:name, :image, :text).merge(user_id: current_user.id)
  end

  def set_worship
    @worship = Worship.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
