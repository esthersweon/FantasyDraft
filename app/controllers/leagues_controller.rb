class LeaguesController < ApplicationController

	def index
		@leagues = League.all
	end

	def show
		@league = League.find(params[:id])
	end

	def new
		@league = League.new
	end

	def create
		@league = League.new(league_params)
		@league.user = current_user
		if @league.save
			redirect_to @league
		else
			flash[:error] = @league.errors.full_messages.join(". ")
			redirect_to new_league_path
		end
	end

	private

	def league_params
		params.require(:league).permit(:format, :number_of_teams, :name)
	end

end
