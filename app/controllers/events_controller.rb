class EventsController < ApplicationController
	def index
		@events = Event.all
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
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
