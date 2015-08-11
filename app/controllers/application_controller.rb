class ApplicationController < ActionController::Base
    before_filter :pride

    def index
        @media = TonyB::Application.config.media.shuffle
        @rots  = TonyB::Application.config.rots
    end

    private
    def pride
        if params.has_key?(:pride)
            session[:pride] = Time.now
            return redirect_to root_path
        else
            session[:pride] = nil if session[:pride] && session[:pride] < 30.seconds.ago
            @pride = true if session[:pride]
        end
    end
end
