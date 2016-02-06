class MoviesController < ApplicationController
  def index
    @movies = MovieSearch.new(query: params[:q], options: search_params)
                         .search
  end

  def search_params
    params.permit :page, :per_page, :sort_attribute, :sort_order, :genre
  end
end
