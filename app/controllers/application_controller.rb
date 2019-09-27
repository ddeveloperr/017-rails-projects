class ApplicationController < JSONAPI::ResourceController
    # Prevent CSRF attacks
    protect_from_forgery with: :null_session
end
