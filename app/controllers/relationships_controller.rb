class RelationshipsController < ApplicationController
    
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
		redirect_to request.referer
  end
  
end