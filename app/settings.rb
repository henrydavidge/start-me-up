require 'sinatra'

configure do
	set :root, File.dirname('../')
	set :public_folder, Proc.new{File.join(root, 'assets')}
end
