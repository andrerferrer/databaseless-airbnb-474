require 'open-uri'
require 'json'

class FlatsController < ApplicationController
  # this will make this method run before every action
  before_action :load_flats

  def index; end
  
  def show
    the_id_the_user_looks_for = params[:id].to_i
    @flat = @flats.find { |flat| flat['id'] == the_id_the_user_looks_for }
  end

  private

  def load_flats
    # This is to pretend that we're opening the database
    # show all the flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    # we use instance variables to make the controller pass data to the view
    @flats = JSON.parse( open(url).read )
  end
end
