class TracksController < ApplicationController
  before_action :require_log_in
  def new
    render :new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      flash[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def show
    @track = Track.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def track_params
    params.require(:track).permit(:title, :bonus, :album_id, :ord, :lyrics)
  end
end
