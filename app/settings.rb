require 'sinatra'

configure do
	set :root, File.dirname('../')
	set :public_folder, File.join(root, 'assets')
end
