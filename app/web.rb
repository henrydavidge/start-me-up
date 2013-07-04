require 'sinatra'
require 'bundler/setup'

get '/' do
	erb :layout
end
