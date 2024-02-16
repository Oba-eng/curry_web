class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = current_user.favorites.build(favorite_params)  # 変数名を @favorite に変更
    @menu = @favorite.menu
    if @favorite.valid?
      @favorite.save
      redirect_to menu_path(@menu)
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @menu = @favorite.menu  # 変数名を @menu に変更
    if @favorite.destroy
      redirect_to menu_path(@menu)
    end
  end

  private
  def favorite_params
    params.permit(:menu_id)
  end
end
