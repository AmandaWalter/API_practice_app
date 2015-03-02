class StaticPagesController < ApplicationController
  def home
    @parameters = { term: 'thai', limit: 20 }
    @response = Yelp.client.search('Salt Lake City', @parameters, sort:2)
  end
end