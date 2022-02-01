class WorshipsController < ApplicationController
  def index
    @worships = Worship.all
  end
end
