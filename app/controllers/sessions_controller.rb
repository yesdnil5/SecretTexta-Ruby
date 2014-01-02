class SessionsController < ApplicationController
	def new
	end

	def create
		@session = Session.new(session_params)
		@session.save
		redirect_to @session
	end
	
	private
		def session_params
			params.requires(:session).permit(:title, :text)
		end
end
