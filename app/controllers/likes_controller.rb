class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    if !@like.save
      flash[:notice] = @like.errors.full_messages.to_sentence
    end
    redirect_to properties_list_url
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    property = @like.property
    @like.destroy
    redirect_to properties_list_url
  end

  private

  def like_params
    params.require(:like).permit(:is_like, :property_id)
  end
end
