class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


#RV
  def hello
    render html: "hello, pancho!"
  end
end
