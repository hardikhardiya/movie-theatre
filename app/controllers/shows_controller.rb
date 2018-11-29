class ShowsController < InheritedResources::Base
    before_action :authenticate_user!

	def index
		@movie = MovieList.find(params[:movie])
		@shows = @movie.shows
	end	

	def show
		@show = Show.find(params[:id])
		@tickets = @ticket = Ticket.where(:show_id => @show.id)
		
	end	

  private

    def show_params
      params.require(:show).permit(:show_time, :show_hall, :movie_list_id)
    end
end

