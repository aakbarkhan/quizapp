class ApplicationController < ActionController::API
    include ActionController::Cookies
    def current_user #memoization @user
        @User ||= User.find_by(id: session[:id])
    end
end
