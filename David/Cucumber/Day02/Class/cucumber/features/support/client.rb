require 'singleton'
class Client
	include Singleton

	def client_id
		@custumer = {1 => "pepe", 2 => "pablo", 3 => "polonia"}
	end

	def priced
		@money = {1 => 350, 2 => 300, 3 => 100}
	end
end

def client
	@client = Client.instance
end