class ApplicationController < ActionController::Base

	def index
        @media = TonyB::Application.config.media.shuffle
        @rots  = TonyB::Application.config.rots
	end
end
