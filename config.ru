app_files = Dir.glob('./app/**/*.rb').sort
app_files.each do |requirement|
	require requirement
end

map '/' do
	run Sinatra::Application
end
