class MovieListsController < InheritedResources::Base
	before_action :authenticate_user!
	
	def index
		search = params[:search]
		if search.present?
			@movie_lists = MovieList.where("name ILIKE ?", search)
		else
		   	@movie_lists = MovieList.all
		end   	
	end	

  private

    def movie_list_params
      params.require(:movie_list).permit(:name, :price)
    end
end

