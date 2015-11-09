require 'json'
require 'sinatra/base'
require 'newrelic_rpm'

class IdeaBoxApp < Sinatra::Base
	get '/' do
		"Hello, World!"
	end

end
