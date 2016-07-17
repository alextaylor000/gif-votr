class VotesController < ApplicationController
  def create
    find_gif
    @gif.votes.create(vote_params)
    redirect_to gifs_path
  end

  private
  def find_gif
    @gif = Gif.find_by_id(params[:gif_id])
  end

  def vote_params
    params.require(:vote).permit(:value)
  end
end
