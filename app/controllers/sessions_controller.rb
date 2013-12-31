class SessionsController < ApplicationController
	def new
	end

	def create
		render text: params[:session].inspect
	end
end
