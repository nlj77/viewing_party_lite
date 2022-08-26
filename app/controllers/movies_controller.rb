class MoviesController < ApplicationController

    def index 
        if params[:search].present?
            @results = MovieFacade.search_movies(params[:search])
            if @results.empty?
                redirect_to "/users/#{params[:id]}/discover"
                flash[:alert] = "No results found!"
            end
            @search_term = params[:search]
        else 
            @results = MovieFacade.top_movies
        end
    end 

    def show 
        @movie = MovieFacade.movie(params[:id])
    end 

    def search
        # @movie = MovieFacade.movie(params[:id])
    end
end