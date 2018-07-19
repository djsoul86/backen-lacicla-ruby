class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true
    include Knock::Authenticable
end
