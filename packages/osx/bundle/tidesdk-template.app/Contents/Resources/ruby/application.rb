require 'rubygems'
gem_path = File.join(
	File.expand_path(File.dirname(Ti.App.getPath)),
	'../Resources/ruby/gems/ruby/1.8'
)
Gem.use_paths(gem_path)

################################################################################

require 'soundcloud'
require 'json'

def party()
	# register a client with YOUR_CLIENT_ID as client_id_
	client = Soundcloud.new(:client_id => "e5d383de590b214e7990e2ec100b93b0")
	# get 10 hottest tracks
	tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
	tracks.to_json
end

