class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#RV
  def hello
    render html: "hello, pancho!"
  end
end
