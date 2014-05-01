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
		if @event.save
			redirect_to events_path
		else
			render 'new'
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
