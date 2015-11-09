require 'yaml/store'

class Idea

	def database
		@database ||= YAML::Store.new "ideabox"
	end

	def save
		database.transaction do |db|
			db['ideas'] ||= []
			db['ideas'] << {title: 'diet', description: 'pizza all the time'}
		end
	end

end

