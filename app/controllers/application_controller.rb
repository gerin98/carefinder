class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "Welcome to our care giving app!"
  end
end
