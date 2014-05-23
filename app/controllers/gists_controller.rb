class GistsController < ApplicationController

	def index
		@gists = current_user.gists.all
	end

	def show
		@gist = Gist.find(params[:id])
		response = HTTParty.get("https://api.github.com/users/#{@gist.gh_id}/gists")
	end

	def create
		@gist = Gist.new(gist_params)
		if @gist.save
			redirect_to :back, notice: "Gist added."
		else
			redirect_to :back, alert: "Failed to save gist."
		end
	end

	private

	def gist_params
		params.require(:gist).permit!
	end
end
