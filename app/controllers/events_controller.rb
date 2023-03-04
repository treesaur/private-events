class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = Event.build(event_params)

    if @event.save
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :location, :creator_id)
  end
end