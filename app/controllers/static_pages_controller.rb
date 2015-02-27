class StaticPagesController < ApplicationController
  def home
    @parameters = { term: 'pub', limit: 20 }
    @response = Yelp.client.search('Salt Lake City', @parameters, sort:2)
  end
end