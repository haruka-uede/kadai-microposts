class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    m_post = Micropost.find(params[:like_id]) 
    current_user.like(m_post)
    flash[:success] = 'お気に入りに登録しました'
    redirect_to m_post
  end

  def destroy
    m_post = Micropost.find(params[:like_id])
    current_user.remove_like(m_post)
    flash[:success] = 'お気に入りに登録しました'
    redirect_to m_post
  end
  
  
end