class ApplicationController < ActionController::Base
    before_filter :pride

    def index
        @media = TonyB::Application.config.media.shuffle
        @rots  = TonyB::Application.config.rots
    end

    private
    def pride
        if params.has_key?(:pride)
            session[:pride] = true
            return redirect_to root_path
        else
            @pride = session[:pride]
            session[:pride] = nil
        end
    end
end
