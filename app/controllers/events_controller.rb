class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.event.build(event_params)
    if @event.save
        redirect_to events_index_path
    else
        render 'new'
    end
  end

  private

    def event_params
        params.require(:event).permit(:title, :date, :description, :venue)
    end

end