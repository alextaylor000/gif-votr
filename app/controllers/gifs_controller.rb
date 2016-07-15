class GifsController < ApplicationController
  def index
    @gifs = Gif.order_by_id
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(gif_params)
    if @gif.save
      redirect_to gifs_path
    else
      flash[:warning] = "There were errors uploading the GIF."
      render :new
    end
  end

  private
  def gif_params
    params.require(:gif).permit([:image])
  end
end
