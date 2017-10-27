class AlbumsController < ApplicationController
  before_action :require_log_in
  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def new
    render :new
  end

  def edit
  end

  def show
    @album ||= Album.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def album_params
    params.require(:album).permit(:band_id, :title, :year, :live)
  end
end
