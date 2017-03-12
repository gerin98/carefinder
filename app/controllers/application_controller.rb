class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "<h1>Welcome to our care giving app!</h1>"
  end
end
