class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
   render html: "hallo muchachos!"
 end

  def bye
   render html: "arrividerci ragazzi!"
 end
end
