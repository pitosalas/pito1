require 'sinatra'
require 'sinatra/activerecord'
require_relative './models/country'

get '/' do
  erb :index
end

post '/submit' do
  @country = Country.new(params[:country])
  if @country.save
    redirect '/countries'
  else
    'Sorry, there was an error!'
  end
end


get '/countries' do
  @countries = Country.all
  erb :countries
end
