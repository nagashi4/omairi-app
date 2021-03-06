class WorshipsController < ApplicationController

  before_action :set_worship, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @worships = Worship.includes(:user).order("created_at DESC")
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
    @comment = Comment.new
    @comments = @worship.comments.includes(:user)
  end
  def search
    @worships = Worship.search(params[:keyword])
  end

  private
  def worship_params
    params.require(:worship).permit(:image, :text).merge(user_id: current_user.id)
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
