class SearchController < ApplicationController

  def index
    restaurants = SearchService.call(request.query_parameters)
    render(json: RestaurantsRepresenter.new(restaurants).as_json, status: :ok)
  end
end
