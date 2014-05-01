class EventsController < ApplicationController
	def index
		@events = Event.all
		@event = Event.new
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(events_params)
		respond_to do |format|
			if @event.save
				format.html { redirect_to events_path, notice: 'Event added.' }
	      format.js {}
			else
	      format.html { render 'events/index', alert: 'There was an error.'  }
	      format.js {}
			end
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def events_params
		params.require(:event).permit(:item)
	end
end
