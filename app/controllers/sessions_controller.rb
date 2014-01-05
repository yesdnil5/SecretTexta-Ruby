class SessionsController < ApplicationController
	def new
	end

	def create
		@session = Session.new(session_params)
		@session.save
		redirect_to @session
	end
	
	def show
		@session = Session.find(params[:id])
	end

	def index
		@sessions = Session.all
	end

	private
		def session_params
			params.require(:session).permit(:title, :text)
		end
end
